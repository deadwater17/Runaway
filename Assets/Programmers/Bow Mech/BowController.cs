using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class BowController : MonoBehaviour
{
    public GameObject Arrow_prefab;
    public Transform Arrow_spawn;
    public Transform Player;
    bool isCharging = false;
    float velocity = 0;
    float chargeTime = 0;
    float minSpeed = 10;
    float maxSpeed = 30;


    // Update is called once per frame
    void Update()
    {
        if (Input.GetMouseButtonDown(0))
        {
            isCharging = true;
        }
        if (isCharging)
        {
            chargeTime += Time.deltaTime;
        }
        if (Input.GetMouseButtonUp(0))
        {
            if (chargeTime <= 1) // setting lowest velocity
            {
                velocity = minSpeed;
            }
            else if (chargeTime >= 3) // setting highest velocity
            {
                velocity = maxSpeed;
            }
            else
            {
                velocity = (chargeTime / 3) * maxSpeed;
            }
            FireArrow();
            chargeTime = 0;

            isCharging = false;
        }
    }

    void FireArrow()
    {
        //create prefab 
        GameObject arrow = Instantiate(Arrow_prefab, Arrow_spawn.position, Quaternion.identity);

        //control the velocity of arrow
        Debug.Log(velocity);
        Rigidbody rb = arrow.GetComponent<Rigidbody>();
        rb.velocity = Arrow_spawn.forward * velocity;
    }
}
