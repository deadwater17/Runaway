using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class InventorySystem : MonoBehaviour
{
    [HideInInspector]
    public float inventoryWeight = 0; // The total weight of the inventory
    [HideInInspector]
    public float inventoryCapacity = 3; // space left in inventory

    public void AddWeight(float weight)
    {
        inventoryWeight += weight; // Add the weight to the inventory
    }

    void Update()
    {
        // Check if the "M" key is pressed
        if (Input.GetKeyDown(KeyCode.M))
        {
          Debug.Log("Total space left in inventory: " + inventoryCapacity + ".");
        }
    }
}
