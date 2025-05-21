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
    float minSpeed = 20;
    float maxSpeed = 40;
    public int arrowNumber;
    public static int currentArrow;

    //sound system
    public AudioClip arrowRelease;
    public AudioClip bowDraw;
    AudioSource m_audioSource;
    private void Start()
    {
        currentArrow = arrowNumber;
        m_audioSource = GetComponent<AudioSource>();
    // ✅ Add: Reference to SoundStateController
    private SoundStateController soundStateController;

    private void Start()
    {
        currentArrow = arrowNumber;

        // ✅ Find the SoundStateController in the scene
        soundStateController = FindObjectOfType<SoundStateController>();
    }

    void Update()
    {
        if (currentArrow <= 0)
        {
            Debug.Log("ammo is empty");
            currentArrow = 0;
        }

        if (currentArrow != 0) 
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
        currentArrow--;
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
