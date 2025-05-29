using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using TMPro;

public class WeaponSwitch : MonoBehaviour
{
    public bool gunUpgraded;
    public bool bowUpgraded;
    public int selectedWeapon = 0;

    // === NEW UI References ===
    public GameObject ArrowIcon;
    public GameObject BulletIcon;
    public TextMeshProUGUI AmmoNumber;

    void Start()
    {
        SelectWeapon();
        gunUpgraded = false;
        bowUpgraded = false;
    }

    void Update()
    {
        int previousSelectedWeapon = selectedWeapon;

        if (Input.GetKeyDown(KeyCode.Alpha1))
        {
            checkBowUpgraded();
        }

        if (Input.GetKeyDown(KeyCode.Alpha2))
        {
            checkGunUpgraded();
        }

        //if (Input.GetKeyDown(KeyCode.Alpha3)){selectedWeapon = 2;}

        if (previousSelectedWeapon != selectedWeapon)
        {
            SelectWeapon();
        }
    }

    void SelectWeapon()
    {
        int i = 0;
        foreach (Transform weapon in transform)
        {
            weapon.gameObject.SetActive(i == selectedWeapon);
            i++;
        }

        // === NEW: Switch UI Icons ===
        if (ArrowIcon != null && BulletIcon != null)
        {
            ArrowIcon.SetActive(selectedWeapon == 0 || selectedWeapon == 1);
            BulletIcon.SetActive(selectedWeapon == 2 || selectedWeapon == 3);
        }

        if (AmmoNumber != null)
        {
            AmmoNumber.gameObject.SetActive(true); // Always visible
        }
    }

    public void checkGunUpgraded()
    {
        if (!gunUpgraded)
        {
            selectedWeapon = 2;
        }
        else if (gunUpgraded)
        {
            selectedWeapon = 3;
        }
    }

    public void checkBowUpgraded()
    {
        if (!bowUpgraded)
        {
            selectedWeapon = 0;
        }
        else if (bowUpgraded)
        {
            selectedWeapon = 1;
        }
    }
}
