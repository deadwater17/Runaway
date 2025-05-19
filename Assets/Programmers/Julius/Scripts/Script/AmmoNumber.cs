using System.Collections;
using System.Collections.Generic;
using TMPro;
using Unity.VisualScripting;
using UnityEngine;

public class AmmoNumber : MonoBehaviour
{
   // public static int arrow = 10;
   // public static int bullet = 10; 

    public GameObject gun;
    public GameObject bow;
    public TextMeshProUGUI text;
    void Start()
    {
        text = GetComponent<TextMeshProUGUI>();
    }

    void Update()
    {
        if(gun.activeSelf)
        {
            text.text = Gun.currentAmmo.ToString();
        }
        else if(bow.activeSelf)
        {
            text.text =  BowController.currentArrow.ToString();
        }
        
    }
}
