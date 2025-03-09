using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class InventorySystem : MonoBehaviour
{
    
  //  public 
    public float inventoryWeight = 0; // The total weight of the inventory

    public void AddWeight(float weight)
    {
        inventoryWeight += weight; // Add the weight to the inventory
    }

    void Update()
    {
        // Check if the "L" key is pressed
        if (Input.GetKeyDown(KeyCode.M))
        {
          Debug.Log("Total weight of inventory: " + inventoryWeight + ".");
        }
    }
}
