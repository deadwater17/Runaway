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
        d_weight = Random.Range(45, 68);        // randomises weight when spawned
        m_inventoryS = FindObjectOfType<InventorySystem>();
    }

    public void Interact()
    {
        Debug.Log("Interacted Deer");
        if (m_inventoryS.inventoryCapacity > 0)
        {
            Debug.Log("Weight added to inventory " + d_weight + ".");
            m_inventoryS.AddAnimal("Deer", d_weight);       // sends to inventory function
            Destroy(this.gameObject);
        }
        else
        {
            Debug.Log("Inventory is full!");
        }
    }

}
