using System.Collections;
using System.Collections.Generic;
using System.ComponentModel.Design.Serialization;
using UnityEngine;
using TMPro;

public class GunShopUI : MonoBehaviour, IInteractable
{
    [SerializeField]private TMP_Text moneyCount;
    [SerializeField]WeaponSwitch weaponSwitch;
    [SerializeField] private int cost = 100;
    private int money;

    void Update()
    {
        money = int.Parse(moneyCount.text);
        //Debug.Log(money);
    }

    public void Interact()
    {
        Debug.Log("Trying to sell");
        if (money >= cost)
        {   
            money = money - cost;
            Debug.Log(money);
            moneyCount.text = money.ToString();
            weaponSwitch.gunUpgraded = true;        // allow usasge of upgraded gun
            weaponSwitch.checkGunUpgraded();
        }
        else
        {
            Debug.Log("You dont have enough money");
        }
    }
}
