using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class rabbitScript : MonoBehaviour, IInteractable
{
    [HideInInspector]
    public float r_weight;
    public InventorySystem m_inventoryS;

    void Start()
    {
        r_weight = Random.Range(0.7f, 2.5f);

        m_inventoryS = FindObjectOfType<InventorySystem>();
    }
    public void Interact()
    {
        if (m_inventoryS.inventoryCapacity == 0 ) 
        {
            Debug.Log("Inventory is full!");
        }
        else 
        {
            Debug.Log("Weight added to inventory " + r_weight + ".");
            m_inventoryS.inventoryCapacity -= 1;
        }
    }
}
