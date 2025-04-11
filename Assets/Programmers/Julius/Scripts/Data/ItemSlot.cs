using System.Collections;
using System.Collections.Generic;
using TMPro;
using UnityEngine;

public class ItemSlot : MonoBehaviour
{
    public string animalName;
    private int m_quantity;
    private float weight; // Weight of the animal

    public TMP_Text itemQuantityText; // Reference to the text component for the item name

    public InventorySystem inventory;

    public void AddAnimal(string animalType, int quantity)
    {
        if (inventory.inventoryCapacity > 0) // Check if there is space in the inventory
        {
            this.animalName = animalType; // Set the item name to the animal type
            this.m_quantity = quantity; // Set the weight of the item
            quantity++; // Increase the quantity of the item in the slot
            itemQuantityText.text = quantity.ToString(); // Update the text component with the new quantity
        }
        else
        {
            Debug.Log("Inventory is full."); // Log a message if the inventory is full
        }
    }
}
