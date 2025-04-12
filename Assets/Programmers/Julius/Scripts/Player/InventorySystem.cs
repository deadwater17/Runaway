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
    public string animalName;
    
    public GameObject inventoryUI; // Reference to the inventory UI
    public Money money;

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


    public void PickupAnimal(string animalType, Sprite animalSprite)
    {

        if (inventoryCapacity > 0)
        {
            inventoryCapacity--; // Decrease the inventory capacity
            animalName = animalType; // Set the animal type
            for (int i = 0; i < itemSlot.Length; i++)
            {
                Debug.Log("Checking slot " + i + " for empty space.");
                if (itemSlot[i].usedSlot == false) // Check if the slot is empty
                {
                    Debug.Log("Found empty slot at index " + i + ".");
                    itemSlot[i].AddAnimal(animalType, animalSprite); // Add the animal to the slot
                    Debug.Log("Added " + animalType + " to inventory. Remaining capacity: " + inventoryCapacity + ".");
                    return; // Exit the loop after adding the animal
                }
            }
        }
        else
        {
            Debug.Log("Inventory is full!");
        }
    }

    public void sellingAnimal() // string animalType
    {
        if (inventoryCapacity < maxInventoryCapacity)
        {
            inventoryCapacity = maxInventoryCapacity; // Reset the inventory capacity to its maximum
            inventoryWeight = 0; // Reset the inventory weight to 0  
            for (int i = 0; i < itemSlot.Length; i++)
            {
                money.SoldAnimals(animalName); 

                if (itemSlot[i].usedSlot == true) // Check if the slot is used
                {
                    itemSlot[i].animalImage.enabled = false; // Disable the image to hide the animal sprite
                    itemSlot[i].usedSlot = false; // Mark the slot as unused
                    itemSlot[i].animalName = ""; // Clear the animal name
                    itemSlot[i].animalSprite = null; // Clear the animal sprite
                }
            }

            Debug.Log("Inventory cleared and capacity reset.");
        }
        else
        {
            Debug.Log("Inventory is already empty!");
        }
    }
}
