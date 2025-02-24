using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Arrow : MonoBehaviour
{
    private Rigidbody rb;

    void Start()
    {
        rb = GetComponent<Rigidbody>();
    }

    void FixedUpdate()
    {

        if (rb.velocity.sqrMagnitude > 0.1f)
        {
            //the arrowhead always point in the direction of motion
            transform.rotation = Quaternion.LookRotation(rb.velocity); 
        }
        
    }
}
