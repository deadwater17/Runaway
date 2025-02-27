using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Arrow : MonoBehaviour
{
    Rigidbody rb;
    bool hit = false;
    void Start()
    {
        rb = GetComponent<Rigidbody>();
    }

    void FixedUpdate()
    {

        if (rb.velocity.sqrMagnitude > 0.1f)
        {
            //the arrowhead always points in the direction of motion
            transform.rotation = Quaternion.LookRotation(rb.velocity); 
        }
        
    }

    void OnCollisionEnter(Collision collision)
    {
         Debug.Log(collision.gameObject.name);
         hit = true;
         rb.velocity = Vector3.zero; 
         rb.angularVelocity = Vector3.zero; // stop rotation
         rb.isKinematic = true;
         transform.position += transform.forward * 0.1f;
    }
}
