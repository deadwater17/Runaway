using System.Collections;
using System.Collections.Generic;
using TMPro;
using Unity.VisualScripting;
using UnityEngine;

public class AmmoNumber : MonoBehaviour
{

    public GameObject gun;
    public GameObject bow;
    public TextMeshProUGUI text;
    void Start()
    {
        text = GetComponent<TextMeshProUGUI>();
    }

    // Update is called once per frame
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
