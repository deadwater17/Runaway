using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class bearScript : MonoBehaviour, IInteractable
{
    
    [HideInInspector]
    public float b_weight;
    public InventorySystem m_inventoryS;
    public CheckTopWeight ctw; 
    void Start()
    {
        b_weight = Random.Range(100f, 200f);

        m_inventoryS = FindObjectOfType<InventorySystem>();
    }
    public void Interact()
    {
        if (m_inventoryS.inventoryCapacity > 0)
        {
            Debug.Log("Weight added to inventory " + b_weight + ".");
            //m_inventoryS.AddAnimal("Bear", b_weight);
            ctw.UpdateWeight("Bear", b_weight);
            Destroy(this.gameObject);
        }
        else
        {
            Debug.Log("Inventory is full!");
        }
    }
}
