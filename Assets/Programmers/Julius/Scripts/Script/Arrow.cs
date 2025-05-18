using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Arrow : MonoBehaviour
{
    Rigidbody rb;
    public float damage;
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
        if(collision.gameObject.CompareTag("Deer"))
        {
            collision.collider.GetComponent<AnimalMovement>().TakeDamage(damage);
            transform.SetParent(collision.transform);
        }
        if (collision.gameObject.CompareTag("Bear"))
        {
            collision.collider.GetComponent<BearMovement>().TakeDamage(damage);
            transform.SetParent(collision.transform);
        }
        rb.velocity = Vector3.zero;
        rb.rotation = Quaternion.Euler(0, 0, 0);
        rb.isKinematic = true;
        GetComponent<Collider>().enabled = false;
        transform.position += transform.forward * 0.1f;
        StartCoroutine(deleteObject());
    }


    IEnumerator deleteObject()
    {
        yield return new WaitForSeconds(2f);
        this.gameObject.SetActive(false);
        GetComponent<Collider>().enabled = true;
        rb.isKinematic = false;
    }
}
