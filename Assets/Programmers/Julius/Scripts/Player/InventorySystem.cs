using System.Collections;
using System.Collections.Generic;
using TMPro;
using UnityEngine;

public class InventorySystem : MonoBehaviour
{
    [HideInInspector]
    public float inventoryWeight = 0; // The total weight of the inventory
    [HideInInspector]
    public float inventoryCapacity = 3; // space left in inventory

    public GameObject inventoryUI; // Reference to the inventory UI

    public void AddWeight(float weight)
    {
        inventoryWeight += weight; // Add the weight to the inventory
    }

    void Start()
    {
        inventoryUI.SetActive(false); // Set the inventory UI to inactive
    }

    void Update()
    {
        InventorySpaceCheck(); 
        OpenInventory();
    }

    void InventorySpaceCheck()
    {
        // Check if the "M" key is pressed
        if (Input.GetKeyDown(KeyCode.M))
        {
          Debug.Log("Total space left in inventory: " + inventoryCapacity + ".");
        }
    }

    void OpenInventory()
    {
        // Check if the "T" key is pressed
        if (Input.GetKeyDown(KeyCode.T))
        {
            inventoryUI.SetActive(!inventoryUI.activeSelf); // Set the inventory UI to active/inactive
        }
    }


    public void AddAnimal(string animalType, float weight)
    {
        if (inventoryCapacity > 0)
        {
            inventoryCapacity--; // Decrease the inventory capacity
        }
        else
        {
            Debug.Log("Inventory is full!");
        }
    }

    public void SoldAnimal() // string animalType, float weight)
    {
        if (inventoryCapacity > 0)
        {
            inventoryCapacity = 0; // Reset the inventory capacity to 0
            Debug.Log("Inventory cleared.");
            // This is a temp solution to clear the inventory.
            // Need to add a function to check every animal in the inventory and remove it.
        }
        else
        {
            Debug.Log("Inventory is empty!");
        }
    }
}
