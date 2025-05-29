using System.Collections;
using System.Collections.Generic;
using Unity.VisualScripting;
using UnityEngine;

public class BowController : MonoBehaviour
{
    [SerializeField] GameObject Arrow_prefab;
    public Transform Arrow_spawn;
    public Transform Player;
    public Camera fpsCam;
    bool isCharging = false;
    float velocity = 0;
    float chargeTime = 0;
    float minSpeed = 35;
    float maxSpeed = 50;
    public int arrowNumber;

    public Dave dave;

    //sound system
    public AudioClip arrowRelease;
    public AudioClip bowDraw;
    AudioSource m_audioSource;

    // ✅ Add: Reference to SoundStateController
    private SoundStateController soundStateController;
    private void Start()
    {
        m_audioSource = GetComponent<AudioSource>();
        // ✅ Find the SoundStateController in the scene
        soundStateController = FindObjectOfType<SoundStateController>();
    }

    void Update()
    {
        if (AmmoNumber.arrowNum <= 0)
        {
            Debug.Log("ammo is empty");
            AmmoNumber.arrowNum = 0;
        }

        if (AmmoNumber.arrowNum != 0 && !dave.isTalked) 
        {
            if (Input.GetMouseButtonDown(0))
            {
                isCharging = true;
                PlayChargeSound();
            }

            if (isCharging)
            {
                chargeTime += Time.deltaTime;
            }

            if (Input.GetMouseButtonUp(0))
            {
                if (chargeTime <= 0.5f)
                {
                    velocity = minSpeed;
                }
                else if (chargeTime >= 2f)
                {
                    velocity = maxSpeed;
                }
                else
                {
                    velocity = Mathf.Lerp(minSpeed, maxSpeed, chargeTime / 2f);
                }

                FireArrow();
                Debug.Log("charge time: " + chargeTime);
                chargeTime = 0;
                isCharging = false;

                // ✅ Trigger orange color for 1 second after releasing the arrow
                if (soundStateController != null)
                    soundStateController.TriggerBowState();
            }
        }
    }

    void FireArrow()
    {
        AmmoNumber.arrowNum--;
        PlayReleaseSound();
        RaycastHit hit;
        Vector3 targetPoint = Vector3.zero;

        if (Physics.Raycast(fpsCam.transform.position, fpsCam.transform.forward, out hit))
        {
            targetPoint = hit.point;
            Debug.Log(hit.transform.name);
        }
        else
        {
            targetPoint = fpsCam.transform.position + fpsCam.transform.forward * 10000f;
        }

        GameObject arrow = ObjectPool.SharedInstance.GetPooledObject();
        if (arrow != null)
        {
            arrow.transform.position = Arrow_spawn.position;
            arrow.transform.rotation = Arrow_spawn.rotation;
            arrow.SetActive(true);
        }

        Rigidbody rb = arrow.GetComponent<Rigidbody>();
        rb.velocity = (targetPoint - Arrow_spawn.position).normalized * velocity;
    }

    void PlayReleaseSound()
    {
        m_audioSource.clip = arrowRelease;
        FindObjectOfType<SoundAdjust>().soundRangeAdjust(m_audioSource);
        m_audioSource.Play();
    }

    void PlayChargeSound()
    {
        m_audioSource.clip = bowDraw;
        m_audioSource.Play();
    }
}
