using System.Collections;
using TMPro;
using UnityEngine;

public class Gun : MonoBehaviour
{
    public GameObject bulletPrefab;
    public Transform firePoint;
    public Camera fpsCam;
    public CameraShake cameraShake;
    //public float damage = 10f;
    public float bulletSpeed = 100f;
    public float gravity = 9.81f;
    public static int currentAmmo;
    
    float nextshoot = 0.0f;
    float shootrate = 1f;

    //sound system
    public AudioClip shootSound;
    AudioSource m_audioSource;

    private void Start()
    {
        cameraShake = fpsCam.GetComponent<CameraShake>();
        m_audioSource = GetComponent<AudioSource>();
        currentAmmo = AmmoNumber.bullet;
    }
    void Update()
    {
        if (currentAmmo <= 0)
        {
            Debug.Log("ammo is empty");
            currentAmmo = 0;
            //UI showing ammo is empty.
        }
        if (Time.time >= nextshoot)
        {
            if (Input.GetMouseButtonDown(0) && currentAmmo != 0)
            {
                Shoot();
                PlayShootSound();
                nextshoot = Time.time + 1f / shootrate;
            }
        }
        
    }

    void Shoot()
    {
        currentAmmo--;

        RaycastHit hit;
        Vector3 targetPoint;
        if(Physics.Raycast(fpsCam.transform.position, fpsCam.transform.forward, out hit))
        {
            targetPoint = hit.point;
            Debug.Log(hit.transform.name);
           
        }
        else
        {
            targetPoint = fpsCam.transform.position + fpsCam.transform.forward * 10000f; // Arbitrary large distance
            
        }
        SpawnBullet(firePoint.position, targetPoint);
        StartCoroutine(cameraShake.shake());
        StartCoroutine(recoil());
    }

    void SpawnBullet(Vector3 start, Vector3 target)
    {
        GameObject bullet = Instantiate(bulletPrefab, start, Quaternion.identity);
        

        Rigidbody rb = bullet.GetComponent<Rigidbody>(); // Get the Rigidbody component
        if (rb == null)
        {
            rb = bullet.AddComponent<Rigidbody>(); // Add Rigidbody if not already attached
        }
        Vector3 velocity = (target - start).normalized * bulletSpeed; // aim at camera
        rb.velocity = velocity;

        Destroy(bullet, 10f);
    }

    IEnumerator recoil()
    {

        
        Quaternion originalRotation = fpsCam.transform.rotation;
        Quaternion recoilRotation = originalRotation * Quaternion.Euler(-2f, 0f, 0f);

        // Instantly apply the recoil
        fpsCam.transform.rotation = recoilRotation;

        float t = 0f;
        float recoverySpeed = 5f; // Adjust this to control how fast the camera returns

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
