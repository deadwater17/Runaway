using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Bullet : MonoBehaviour
{
    public float lifetime = 2f;
    Rigidbody rb;
    void Start()
    {
        rb = GetComponent<Rigidbody>();
    }

    // Update is called once per frame
    void Update()
    {
        transform.forward = rb.velocity.normalized; // bullet always points in the direction of motion
    }

    void OnCollisionEnter(Collision collision)
    {
        rb.velocity = Vector3.zero;
        rb.rotation = Quaternion.Euler(0,0,0);
        rb.isKinematic = true;
        //GetComponent<Collider>().enabled = false;
    }
}
