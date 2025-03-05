using System.Collections;
using UnityEngine;

public class Gun : MonoBehaviour
{
    public Transform firePoint;
    public Camera fpsCam;
    //public float damage = 10f;
    public float range = 100f;
    public float bulletSpeed = 100f;
    public float gravity = 9.81f;
    public GameObject bulletPrefab;

    
    void Update()
    {
        if(Input.GetMouseButtonDown(0))
        {
            Shoot();
        }
    }

    void Shoot()
    {
        RaycastHit hit;
        Vector3 targetPoint;
        if(Physics.Raycast(fpsCam.transform.position, fpsCam.transform.forward, out hit, range))
        {
            targetPoint = hit.point;
            Debug.Log(hit.transform.name);
            transform.LookAt(targetPoint);
            SpawnBullet(firePoint.position, targetPoint);
        }
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

        Destroy(bullet, 3.5f);
    }
}
