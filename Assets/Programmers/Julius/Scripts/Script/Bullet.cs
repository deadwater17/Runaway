using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Bullet : MonoBehaviour
{
    public float lifetime = 2f;
    public float attackDamage = 25;
    private TimeController timeController;
    Rigidbody rb;
    void Start()
    {
        rb = GetComponent<Rigidbody>();
        timeController = FindObjectOfType<TimeController>();
    }

    // Update is called once per frame
    void Update()
    {
        transform.forward = rb.velocity.normalized; // bullet always points in the direction of motion
    }

    void OnCollisionEnter(Collision collision)
    {
        if(collision.gameObject.CompareTag("Deer"))
        {
            Debug.Log("attack!!!!!!!!!!!!!!!!");
            collision.collider.GetComponent<AnimalMovement>().TakeDamage(attackDamage);
            transform.SetParent(collision.transform);
        }
        if (collision.gameObject.CompareTag("Bear"))
        {
            if(timeController.isDay())
            {
                collision.collider.GetComponent<AnimalMovement>().TakeDamage(attackDamage);
            }
            else
            {
                collision.collider.GetComponent<BearMovement>().TakeDamage(attackDamage);
            }
            transform.SetParent(collision.transform);
        }
        rb.velocity = Vector3.zero;
        rb.rotation = Quaternion.Euler(0,0,0);
        rb.isKinematic = true;
        
        //GetComponent<Collider>().enabled = false;
        //StartCoroutine(deleteObject());
    }


    //IEnumerator deleteObject()
    //{
    //    yield return new WaitForSeconds(2f);
    //    this.gameObject.SetActive(false);
    //    GetComponent<Collider>().enabled = true;
    //    rb.isKinematic = false;
    //}
}
