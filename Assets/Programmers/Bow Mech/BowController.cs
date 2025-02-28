using System.Collections;
using System.Collections.Generic;
using Unity.VisualScripting;
using UnityEngine;

public class BowController : MonoBehaviour
{
    public GameObject Arrow_prefab;
    public Transform Arrow_spawn;
    public Transform Player;
    bool isCharging = false;
    float velocity = 0;
    float chargeTime = 0;
    float minSpeed = 20;
    float maxSpeed = 40;


    // Update is called once per frame
    void Update()
    {
        if (Input.GetMouseButtonDown(0))
        {
            isCharging = true; 
        }
        if (isCharging)
        {
            chargeTime += Time.deltaTime; // calculate the chargetime
        }
        if (Input.GetMouseButtonUp(0))
        {
            if (chargeTime <= 0.5) // setting lowest velocity
            {
                velocity = minSpeed;
            }
            else if (chargeTime >= 2) // setting highest velocity
            {
                velocity = maxSpeed;
            }
            else
            {
                velocity = Mathf.Lerp(minSpeed, maxSpeed, chargeTime / 2); ; // calculate velocity based on charge time when it is between 0.5 - 2.0 seconds
            }
            FireArrow();
            Debug.Log("charge time: " + chargeTime);
            chargeTime = 0;
            isCharging = false;
        }
    }

    void FireArrow()
    {
        //create prefab 
        //GameObject arrow = Instantiate(Arrow_prefab, Arrow_spawn.position, Quaternion.identity);
        GameObject arrow = ObjectPool.SharedInstance.GetPooledObject();
        if(arrow != null)
        {
            arrow.transform.position = Arrow_spawn.position;
            arrow.transform.rotation = Arrow_spawn.rotation;
            arrow.SetActive(true);
        }


        //control the velocity of arrow
        Debug.Log("arrow: "+ velocity);
        Rigidbody rb = arrow.GetComponent<Rigidbody>();
        rb.velocity = Arrow_spawn.forward * velocity;
    }
}
