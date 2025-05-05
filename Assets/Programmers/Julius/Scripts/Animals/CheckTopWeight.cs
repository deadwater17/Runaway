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

    void Update()
    {
        CheckWeight();
        if (Input.GetKeyDown(KeyCode.Y)) // Show the heaviest deer weight when Y is pressed
        {
            Debug.Log("Heaviest Deer carried: " + TopWeight + " kg.");
        }
    }

    public void UpdateWeight(float weight)
    {
        if (TopWeight < m_newWeight)
        {
            TopWeight = m_newWeight; // Update to the new heaviest deer weight
            Debug.Log("New heaviest deer weight: " + TopWeight);
        }
    }

    private void CheckWeight()
    {
        
    }
}
