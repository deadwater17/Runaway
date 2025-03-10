using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class deerScript : MonoBehaviour, IInteractable
{
    [HideInInspector]
    public float weight;
    private InventorySystem m_inventoryS;

    void Start()
    {
        weight = Random.Range(160, 180);
    }
    public void Interact()
    {
        if (m_inventoryS.inventoryCapacity == 0 ) 
        {
            Debug.Log("Inventory is full!");
        }
        else 
        {
            Debug.Log("Weight added to inventory " + weight + ".");
            m_inventoryS.inventoryCapacity += 1;
        }
    }
}
