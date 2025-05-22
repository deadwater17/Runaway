using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ControlBear : MonoBehaviour
{
    public BearMovement nightScript;
    public AnimalMovement dayScript;
    private TimeController timeController;
    void Start()
    {
         timeController = FindObjectOfType<TimeController>();
    }

    // Update is called once per frame
    void Update()
    {
        if (timeController == null) return;

        if (timeController.isDay()) //Day time
        {
            dayScript.enabled = true;
            nightScript.enabled = false;
        }
        else //Night time
        {
            dayScript.enabled = false;
            nightScript.enabled = true;
        }
    }
}
