using System.Collections;
using System.Collections.Generic;
using Microsoft.Unity.VisualStudio.Editor;
using TMPro;
using UnityEngine;
using UnityEngine.UI;


public class ItemSlot : MonoBehaviour
{
    public string animalName;
    public Sprite animalSprite; 
    public bool usedSlot; // Check if the slot is used

    [SerializeField]
    public UnityEngine.UI.Image animalImage;

    public InventorySystem inventory;

    void Start()
    {
        usedSlot = false; // Initialize the slot as unused
        animalImage.enabled = false;
    }

    public void AddAnimal(string animalType, Sprite animalSprite)
    {
        this.animalName = animalType; // Set the item name to the animal type
        this.animalSprite = animalSprite; // Set the sprite of the item      

        animalImage.sprite = animalSprite;
        animalImage.enabled = true; // Enable the image to show the animal sprite

        Debug.Log ("Added " + animalType + " to inventory slot.");

        usedSlot = true; // Mark the slot as used

    }
}
