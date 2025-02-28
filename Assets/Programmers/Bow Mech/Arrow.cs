using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Arrow : MonoBehaviour
{
    Rigidbody rb;
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
       
        rb.isKinematic = true;
        transform.position += transform.forward * 0.1f;
        //StartCoroutine(deleteObject());
    }


    IEnumerator deleteObject()
    {
        yield return new WaitForSeconds(2f);
        this.gameObject.SetActive(false);
        rb.isKinematic = false;
    }
}
