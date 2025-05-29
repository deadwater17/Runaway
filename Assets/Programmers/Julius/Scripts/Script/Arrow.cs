using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Arrow : MonoBehaviour
{
    Rigidbody rb;
    public float damage = 20;
    private TimeController timeController;
    void Start()
    {
        rb = GetComponent<Rigidbody>();
        timeController = FindObjectOfType<TimeController>();
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
            //transform.SetParent(collision.transform);
        }
        if (collision.gameObject.CompareTag("Bear"))
        {
            if(timeController.isDay())
            {
                collision.collider.GetComponent<AnimalMovement>().TakeDamage(damage);
            }
            else
            {
                collision.collider.GetComponent<BearMovement>().TakeDamage(damage);
            }
            //transform.SetParent(collision.transform);
        }
        if (collision.gameObject.CompareTag("Player")) return;
        transform.position += transform.forward * 0.1f;
        this.gameObject.SetActive(false);
    }

}
