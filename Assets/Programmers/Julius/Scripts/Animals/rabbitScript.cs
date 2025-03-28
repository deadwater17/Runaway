using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class rabbitScript : MonoBehaviour, IInteractable
{
    [HideInInspector]
    public float r_weight;
    public InventorySystem m_inventoryS;
    public CheckTopWeight ctw;

    void Start()
    {
        r_weight = Random.Range(1f, 3f);
        m_inventoryS = FindObjectOfType<InventorySystem>();
    }
    public void Interact()
    {
        if (m_inventoryS.inventoryCapacity > 0 ) 
        {
            Debug.Log("Weight added to inventory " + r_weight + ".");
            m_inventoryS.AddAnimal("Rabbit", r_weight);
            ctw.UpdateWeight("Rabbit", r_weight);
            Destroy(this.gameObject);
        }
        else
        {
            Debug.Log("Inventory is full.");
        }
    }
}
