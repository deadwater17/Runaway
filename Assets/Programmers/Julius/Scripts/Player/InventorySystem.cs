using System.Collections;
using System.Collections.Generic;
using TMPro;
using UnityEngine;


public class InventorySystem : MonoBehaviour
{
    public ItemSlot[] itemSlot;

    [HideInInspector]
    public float inventoryWeight = 0; // The total weight of the inventory
    [HideInInspector]
    public float inventoryCapacity = 3; // space left in inventory
    private float maxInventoryCapacity = 3; // Maximum inventory capacity
    public GameObject inventoryUI; // Reference to the inventory UI


    //std::vec3 <Animals> animals; // List of animals in the inventory

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


    public void PickupAnimal(string animalType, int quantity)
    {
        if (inventoryCapacity > 0)
        {
            inventoryCapacity--; // Decrease the inventory capacity
            for (int i = 0; i < itemSlot.Length; i++)
            {
                if (itemSlot[i].animalName == null) // Check if the slot is empty
                {
                    itemSlot[i].AddAnimal(animalType, quantity); // Add the animal to the slot
                    Debug.Log("Added " + animalType + " to inventory. Remaining capacity: " + inventoryCapacity + ".");
                    break; // Exit the loop after adding the animal
                }
            }
        }
        else
        {
            Debug.Log("Inventory is full!");
        }
    }

    public void SoldAnimal() // string animalType, float weight)
    {
        if (inventoryCapacity < maxInventoryCapacity)
        {
            inventoryCapacity = maxInventoryCapacity; // Reset the inventory capacity to its maximum
            inventoryWeight = 0; // Reset the inventory weight to 0
            Debug.Log("Inventory cleared and capacity reset.");
        }
        else
        {
            Debug.Log("Inventory is already empty!");
        }
    }
}
