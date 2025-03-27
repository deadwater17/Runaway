using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class deerScript : MonoBehaviour, IInteractable
{
    [HideInInspector]
    public float d_weight;
    public InventorySystem m_inventoryS;

    void Start()
    {
        d_weight = Random.Range(45, 68);
        m_inventoryS = FindObjectOfType<InventorySystem>();
    }

    public void Interact()
    {
        if (m_inventoryS.inventoryCapacity > 0)
        {
            Debug.Log("Weight added to inventory " + d_weight + ".");
            m_inventoryS.AddAnimal("Deer", d_weight);
            Destroy(this.gameObject);
        }
        else
        {
            Debug.Log("Inventory is full!");
        }
    }

}
