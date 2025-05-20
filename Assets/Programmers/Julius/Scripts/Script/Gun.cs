using System.Collections;
using TMPro;
using UnityEngine;

public class Gun : MonoBehaviour
{
    public GameObject bulletPrefab;
    public Transform firePoint;
    public Camera fpsCam;
    public CameraShake cameraShake;
    public float bulletSpeed = 100f;
    public float gravity = 9.81f;
    public static int currentAmmo;
    public int bulletNumber = 40;
    float nextshoot = 0.0f;
    float shootrate = 1f;

    //sound system
    public AudioClip shootSound;
    AudioSource m_audioSource;

    // ✅ Add: Reference to SoundStateController
    private SoundStateController soundStateController;

    private void Start()
    {
        cameraShake = fpsCam.GetComponent<CameraShake>();
        m_audioSource = GetComponent<AudioSource>();
        currentAmmo = bulletNumber;

        // ✅ Find SoundStateController in the scene
        soundStateController = FindObjectOfType<SoundStateController>();
    }

    void Update()
    {
        if (currentAmmo <= 0)
        {
            Debug.Log("ammo is empty");
            currentAmmo = 0;
        }

        if (Time.time >= nextshoot)
        {
            if (Input.GetMouseButtonDown(0) && currentAmmo != 0)
            {
                Shoot();
                PlayShootSound();
                nextshoot = Time.time + 1f / shootrate;

                // ✅ Trigger red color for 1 second after gunshot
                if (soundStateController != null)
                    soundStateController.TriggerGunState();
            }
        }
    }

    void Shoot()
    {
        currentAmmo--;

        RaycastHit hit;
        Vector3 targetPoint;
        if (Physics.Raycast(fpsCam.transform.position, fpsCam.transform.forward, out hit))
        {
            targetPoint = hit.point;
            Debug.Log(hit.transform.name);
        }
        else
        {
            targetPoint = fpsCam.transform.position + fpsCam.transform.forward * 10000f;
        }

        SpawnBullet(firePoint.position, targetPoint);
        StartCoroutine(cameraShake.shake());
        StartCoroutine(recoil());
    }

    void SpawnBullet(Vector3 start, Vector3 target)
    {
        GameObject bullet = Instantiate(bulletPrefab, start, Quaternion.identity);

        Rigidbody rb = bullet.GetComponent<Rigidbody>();
        if (rb == null)
        {
            rb = bullet.AddComponent<Rigidbody>();
        }

        Vector3 velocity = (target - start).normalized * bulletSpeed;
        rb.velocity = velocity;

        Destroy(bullet, 10f);
    }

    IEnumerator recoil()
    {
        Quaternion originalRotation = fpsCam.transform.rotation;
        Quaternion recoilRotation = originalRotation * Quaternion.Euler(-2f, 0f, 0f);

        fpsCam.transform.rotation = recoilRotation;

        float t = 0f;
        float recoverySpeed = 5f;

        while (t <= 1f)
        {
            t += Time.deltaTime * recoverySpeed;
            fpsCam.transform.rotation = Quaternion.Slerp(recoilRotation, originalRotation, t);
            yield return null;
        }
    }

    void PlayShootSound()
    {
        m_audioSource.clip = shootSound;
        FindObjectOfType<SoundAdjust>().soundRangeAdjust(m_audioSource);
        m_audioSource.Play();
    }
}
