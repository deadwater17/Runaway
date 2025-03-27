using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class deerScript : MonoBehaviour, IInteractable
{
    [HideInInspector]
    public float d_weight;
    public InventorySystem m_inventoryS;

    private bool m_isActive;

    void Start()
    {
        d_weight = Random.Range(160, 180);
        m_isActive = true;
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
            Debug.Log("Weight added to inventory " + d_weight + ".");
            m_inventoryS.inventoryCapacity -= 1;
            FindObjectOfType<CheckTopWeight>().UpdateWeight(d_weight);
            Destroy(this.gameObject);
        }
    }

}
