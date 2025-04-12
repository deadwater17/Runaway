using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class deerScript : MonoBehaviour, IInteractable
{
    public Sprite d_Sprite;   
    
    [HideInInspector]
    public float d_weight;
    public InventorySystem inventoryS;
    public CheckTopWeight ctw;
    private float m_oldweight;    
    
    void Start()
    {
        d_weight = Random.Range(45, 68);
        inventoryS = FindObjectOfType<InventorySystem>();
        m_oldweight = d_weight;
    }

    public void Interact()
    {
        if (inventoryS.inventoryCapacity > 0 ) 
        {
            inventoryS.PickupAnimal("Deer", d_Sprite); // Add the animal to the inventory
            ctw.UpdateWeight("Deer", d_weight);
            Destroy(this.gameObject);
        }
        else
        {
            Debug.Log("Inventory is full.");
        }
    }

}
