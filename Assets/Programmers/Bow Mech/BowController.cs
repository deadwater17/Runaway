using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class BowController : MonoBehaviour
{
    public GameObject Arrow_prefab;
    public Transform Arrow_spawn;
    public Transform Player;
    void Start()
    {
        //arrow_prefab.transform.Rotate(90, 0, 0);
    }

    // Update is called once per frame
    void Update()
    {
        if(Input.GetMouseButtonDown(0)) 
        {
            FireArrow();
        }
    }

    void FireArrow()
    {
        //create prefab 
        GameObject arrow = Instantiate(Arrow_prefab, Arrow_spawn.position, Quaternion.identity);

        //change the orientation of original arrow
        arrow.transform.rotation = Player.rotation; 
        arrow.transform.Rotate(90, 0, 0);

        //control the velocity of arrow
        Rigidbody rb = arrow.GetComponent<Rigidbody>();
        rb.velocity = Arrow_spawn.forward * 10;
    }
}
