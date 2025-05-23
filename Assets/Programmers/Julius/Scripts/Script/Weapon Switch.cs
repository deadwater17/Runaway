using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using TMPro;

public class WeaponSwitch : MonoBehaviour
{
    public bool gunUpgraded;
    public int selectedWeapon = 0;

    // === NEW UI References ===
    public GameObject ArrowIcon;
    public GameObject BulletIcon;
    public TextMeshProUGUI AmmoNumber;

    void Start()
    {
        SelectWeapon();
        gunUpgraded = false;
    }

    void Update()
    {
        int previousSelectedWeapon = selectedWeapon;

        if (Input.GetKeyDown(KeyCode.Alpha1))
        {
            selectedWeapon = 0;
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
            ArrowIcon.SetActive(selectedWeapon == 0);
            BulletIcon.SetActive(selectedWeapon == 1 || selectedWeapon == 2);
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
            selectedWeapon = 1;
        }
        else if (gunUpgraded)
        {
            selectedWeapon = 2;
        }
    }
}
