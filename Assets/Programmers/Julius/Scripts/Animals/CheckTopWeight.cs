using System.Collections;
using System.Collections.Generic;
using Unity.VisualScripting;
using UnityEngine;

public class CheckTopWeight : MonoBehaviour
{
    [HideInInspector]
    public float TopWeight = 0; // The total weight of the inventory
    private deerScript deerScript;
    private float m_newWeight;

    
    public GameObject rabbittxt;
    public GameObject deertxt;
    public GameObject beartxt;
    private float m_RoldWeight;
    private float m_DoldWeight;
    private float m_BoldWeight;
    private float m_RnewWeight;
    private float m_DnewWeight;
    private float m_BnewWeight;


    void Update()
    {
        //CheckWeight();
        if (Input.GetKeyDown(KeyCode.Y)) // Show the heaviest deer weight when Y is pressed
        {
            Debug.Log("Heaviest Deer carried: " + TopWeight + " kg.");
        }
    }

    public void UpdateWeight(string animalType, float weight)
    {
        if (TopWeight < m_newWeight)
        {
            TopWeight = m_newWeight; // Update to the new heaviest deer weight
            Debug.Log("New heaviest deer weight: " + TopWeight);
        }
    /*
        switch (animalType)
        {
            case "Rabbit":
                rabbitCount++;
                rabbitNum.text = rabbitCount.ToString();
                break;
            case "Deer":
                deerCount++;
                deerNum.text = deerCount.ToString();
                break;
            case "Bear":
                bearCount++;
                bearNum.text = bearCount.ToString();
                break;
        }
    */
    }

    /*
    private void UpdateWeight()
    {
        if (m_oldweight < d_weight)
    }

    private void CheckWeight()
    {

    }

    */
}
