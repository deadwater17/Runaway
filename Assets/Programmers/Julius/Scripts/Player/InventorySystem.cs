using System.Collections;
using System.Collections.Generic;
using TMPro;
using UnityEngine;

public class InventorySystem : MonoBehaviour
{
    [HideInInspector]
    public float inventoryWeight = 0; // The total weight of the inventory
    [HideInInspector]
    public float inventoryCapacity = 3; // space left in inventory

    public GameObject inventoryUI; // Reference to the inventory UI

    public TMP_Text rabbitNum;
    public TMP_Text deerNum;
    public TMP_Text bearNum;

    private int rabbitCount = 0;
    private int deerCount = 0;
    private int bearCount = 0;

    public void AddWeight(float weight)
    {
        inventoryWeight += weight; // Add the weight to the inventory
    }

    void Start()
    {
        inventoryUI.SetActive(false); // Set the inventory UI to inactive
    }

    void Update()
    {
        InventorySpaceCheck(); 
        OpenInventory();
    }

    void InventorySpaceCheck()
    {
        // Check if the "M" key is pressed
        if (Input.GetKeyDown(KeyCode.M))
        {
          Debug.Log("Total space left in inventory: " + inventoryCapacity + ".");
        }
    }

    void OpenInventory()
    {
        // Check if the "T" key is pressed
        if (Input.GetKeyDown(KeyCode.T))
        {
            inventoryUI.SetActive(!inventoryUI.activeSelf); // Set the inventory UI to active/inactive
        }
    }

    public void AddAnimal(string animalType, float weight)
    {
        if (inventoryCapacity > 0)
        {
            inventoryCapacity--;
            AddWeight(weight);

            switch (animalType)
            {
                case "Rabbit":
                    rabbitCount++;
                    rabbitNum.text = rabbitCount.ToString();
                    break;
                case "Deer":
                    deerCount++;
                    deerNum.text = deerCount.ToString();
                    break;
                case "Bear":
                    bearCount++;
                    bearNum.text = bearCount.ToString();
                    break;
            }
        }
        else
        {
            Debug.Log("Inventory is full!");
        }
    }

}
