using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Seller : MonoBehaviour, IInteractable
{
    public InventorySystem inventoryS;
    public string animalName; // Name of the animal to be sold

    void Start()
    {
        inventoryS = FindObjectOfType<InventorySystem>();
    }
    public void Interact()
    {
        inventoryS.sellingAnimal(); // Add the animal to the inventory
    }
    

}
