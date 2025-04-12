using System.Collections;
using System.Collections.Generic;
using TMPro;
using UnityEngine;
using UnityEngine.UI;

public class rabbitScript : MonoBehaviour, IInteractable
{
    public Sprite r_Sprite;       //this needs to be the immage of the animal in the inventory

    [HideInInspector]
    private float r_weight;
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
            m_inventoryS.PickupAnimal("Rabbit", r_Sprite); // Add the animal to the inventory
            ctw.UpdateWeight("Rabbit", r_weight);
            Destroy(this.gameObject);
        }
        else
        {
            Debug.Log("Inventory is full.");
        }
    }
}
