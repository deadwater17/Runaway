using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using TMPro;
using UnityEngine.UI;

public class Money : MonoBehaviour
{
    public TMP_Text moneyText; // Reference to the TextMeshPro component for displaying money
    private int moneyCount; // Total money count
    
    public void SoldAnimals(string animalName)
    {
        switch (animalName)
        {
            case "Rabbit":
                moneyCount += 10; // Add 1 to the money count for selling a rabbit
                Debug.Log("Sold Rabbit. Total Money: " + moneyCount);
                UpdateMoneyText(); // Update the money text display
                break;
            case "Deer":
                moneyCount += 25; // Add 2 to the money count for selling a deer
                Debug.Log("Sold Deer. Total Money: " + moneyCount);
                UpdateMoneyText(); // Update the money text display
                break;
            case "Bear":
                moneyCount += 40; // Add 3 to the money count for selling a bear
                Debug.Log("Sold Bear. Total Money: " + moneyCount);
                UpdateMoneyText(); // Update the money text display
                break;
        }
    }
    public void UpdateMoneyText()
    {
        moneyText.text = "Money: " + moneyCount.ToString(); // Update the money text display
    }
}
