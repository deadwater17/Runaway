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
    public AudioSource gunUpgradeAudioSource;
    public AudioClip gunUpgradeAudioClip;
    public AudioClip purchaseClip;
    public GameObject gunSubs;

    void Update()
    {
        money = int.Parse(moneyCount.text);
        //Debug.Log(money);
    }

    public void Interact()
    {
        if (!weaponSwitch.gunUpgraded)
        {
            Debug.Log("Trying to sell");
            if (money >= cost)
            {   
                gunUpgradeAudioSource.PlayOneShot(purchaseClip);
                money = money - cost;
                Debug.Log(money);
                moneyCount.text = money.ToString();
                weaponSwitch.gunUpgraded = true;        // allow usasge of upgraded gun
                weaponSwitch.checkGunUpgraded();
                gunUpgradeAudioSource.PlayOneShot(gunUpgradeAudioClip);
                gunSubs.SetActive(true);
                Invoke("SetFalse", 4.0f);
            }
            else
            {
                Debug.Log("You dont have enough money");
            }
        }
        else
        {
            Debug.Log("Weapon is already upgraded");
        }
    }

    void SetFalse()
    {
        gunSubs.SetActive(false);
    }
}
