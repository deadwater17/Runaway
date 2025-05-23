using System.Collections;
using System.Collections.Generic;
using TMPro;
using UnityEngine;

public class InventorySystem : MonoBehaviour
{
    [HideInInspector]
    public float inventoryWeight = 0; // The total weight of the inventory
    [HideInInspector]
    public float inventoryCapacity = 3; // Space left in inventory

    public GameObject inventoryUI; // Reference to the inventory UI

    [SerializeField] TMP_Text rabbitNum;
    [SerializeField] TMP_Text deerNum;
    [SerializeField] TMP_Text bearNum;

    public int rabbitCount = 0;
    public int deerCount = 0;
    public int bearCount = 0;

    public Animator inventoryAnimator; // Reference to the animator
    private bool isInventoryUp = false; // Tracks current animation state

    // ✅ New reference for the popup UI controller
    public AnimalPopupController popupController;

    public void AddWeight(float weight)
    {
        inventoryWeight += weight; // Add the weight to the inventory
    }

    void Start()
    {
        inventoryUI.SetActive(true); // Ensure inventory UI is active
        inventoryAnimator = inventoryUI.GetComponent<Animator>();
        if (inventoryAnimator == null)
        {
            Debug.LogWarning("Animator not found on inventoryUI!");
        }
    }

    void Update()
    {
        InventorySpaceCheck();
        OpenInventory();
    }

    void InventorySpaceCheck()
    {
        if (Input.GetKeyDown(KeyCode.M))
        {
            Debug.Log("Total space left in inventory: " + inventoryCapacity + ".");
        }
    }

    void OpenInventory()
    {
        if (Input.GetKeyDown(KeyCode.T) && inventoryAnimator != null)
        {
            if (!isInventoryUp)
            {
                inventoryAnimator.SetTrigger("InventoryUp"); // Trigger the up animation
                isInventoryUp = true;
            }
            else
            {
                inventoryAnimator.SetTrigger("InventoryDown"); // Trigger the down animation
                isInventoryUp = false;
            }

            Debug.Log("Toggled inventory animation");
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

            // ✅ Trigger the popup UI safely
            popupController?.Show(animalType);
        }
        else
        {
            Debug.Log("Inventory is full!");
        }
    }
}
