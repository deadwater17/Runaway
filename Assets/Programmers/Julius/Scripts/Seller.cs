using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Seller : MonoBehaviour, IInteractable
{
    public InventorySystem inventoryS;


    public void Interact()
    {
        inventoryS.SoldAnimal();
    }
    
}
