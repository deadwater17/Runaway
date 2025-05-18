using System.Collections;
using System.Collections.Generic;
using TMPro;
using UnityEngine;

public class ArrowShop : MonoBehaviour, IInteractable
{
    public GameObject bow;

    [SerializeField] private TMP_Text moneyCount;
    private int money;
    [SerializeField] int arrowCost = 5;
    private int arrowPay;
    private int arrowMax = 10;
    [SerializeField] int currentArrows;
    private int cost;

    void Update()
    {
        money = int.Parse(moneyCount.text);
    }

    public void Interact()
    {
        int currentArrows = getCurrentAmmo();
        cost = getCost();

        if (money >= cost)
        {
            money = money - cost;
            currentArrows = arrowMax;
            BowController.currentArrow = currentArrows;
            moneyCount.text = money.ToString();
        }
        else
        {
            Debug.Log("Not enough money for arrows.");
        }
    }

    private int getCost()
    {
        arrowPay = (arrowMax - currentArrows) * arrowCost;
        return arrowPay;
    }

    private int getCurrentAmmo()
    {
        currentArrows = BowController.currentArrow;
        return currentArrows;
    }

}