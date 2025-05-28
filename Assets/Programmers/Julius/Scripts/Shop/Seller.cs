using System.Collections;
using System.Collections.Generic;
using TMPro;
using UnityEngine;

public class Seller : MonoBehaviour
{
    [SerializeField] TMP_Text rabNum;
    [SerializeField] int rabPrice = 25;
    [SerializeField] TMP_Text deerNum;
    [SerializeField] int deerPrice = 50;
    [SerializeField] TMP_Text bearNum;
    [SerializeField] int bearPrice  = 100;

    private int count;

    [SerializeField] TMP_Text moneyCount;
    public int money;

    InventorySystem invSys;

    //public AudioSource AudioSource;

    private void Update()
    {
        money = int.Parse(moneyCount.text);
    }

    void Start()
    {
        count = 0;
        invSys = FindAnyObjectByType<InventorySystem>();
    }

    public void Sell()
    {
        int rabbitCount = invSys.rabbitCount;
        int deerCount = invSys.deerCount;
        int bearCount = invSys.bearCount;

     // Loop through each animal type and calculate money
        for (int i = 0; i < 3; i++) 
        {
            switch (i)
            {
                case 0: // Rabbits
                    if (rabbitCount > 0)
                    {
                        count += rabbitCount * rabPrice; 
                        Debug.Log("Sold " + rabbitCount + " rabbits");
                        //AudioSource.PlayOneShot(AudioSource.clip);
                        rabbitCount = 0; // Reset count
                        rabNum.text = rabbitCount.ToString();
                    }
                    break;

                case 1: // Deer
                    if (deerCount > 0)
                    {
                        count += deerCount * deerPrice;
                        Debug.Log("Sold " + deerCount + " deers");
                        //AudioSource.PlayOneShot(AudioSource.clip);
                        deerCount = 0; // Reset count
                        deerNum.text = deerCount.ToString();
                    }
                    break;

                case 2: // Bears
                    if (bearCount > 0)
                    {
                        count += bearCount * bearPrice; 
                        Debug.Log("Sold " + bearCount + " bears");
                        //AudioSource.PlayOneShot(AudioSource.clip);
                        bearCount = 0; // Reset count
                        bearNum.text = bearCount.ToString();
                    }
                    break;
            }
            
        }

        // Reset inventory capacity and update money UI
        invSys.rabbitCount = 0;
        invSys.deerCount = 0;
        invSys.bearCount = 0;
        invSys.inventoryCapacity = 3; // Reset inventory capacity to max

        money += count;
        moneyCount.text = money.ToString();

        count = 0;
    }
}
