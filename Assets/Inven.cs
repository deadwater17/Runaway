using System.Collections;
using System.Collections.Generic;
using UnityEditor.Animations;
using UnityEngine;

public class Inven : MonoBehaviour
{
    private AnimatorController controller;

    // Start is called before the first frame update
    void Start()
    {
        controller = GetComponent<AnimatorController>();
    }

    // Update is called once per frame
    void Down()
    {
     //   controller.setbool(Down, true);

    }
    void Up()
    {
      //  controller.setbool(Down, false);
    }
}
