using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using TMPro;

public class BulletShop : MonoBehaviour, IInteractable
{
    public GameObject gun;

    [SerializeField] private TMP_Text moneyCount;
    private int money;
    [SerializeField] int bulletCost = 10;
    private int bulletPay;
    private int bulletMax = 10;
    [SerializeField] int currentBullet;

    private int cost;

    void Update()
    {
        money = int.Parse(moneyCount.text);
    }

    public void Interact()
    {
        int currentBullet = getCurrentAmmo();   // gets the current bullet
        cost = getCost();

        if (money >= cost)
        {
            money = money - cost;
            currentBullet = currentBullet + bulletMax;
            Gun.currentAmmo = currentBullet;
            moneyCount.text = money.ToString();
        }
        else
        {
            Debug.Log("Not enough money for bullet.");
        }
    }

    private int getCost()
    {
        // see how many bullets are left and gets the total cost
        bulletPay = 10 * bulletCost;
        return bulletPay;   
    }

    private int getCurrentAmmo()
    {
        currentBullet = Gun.currentAmmo;    
        return currentBullet;
    }

}
