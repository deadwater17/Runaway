using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class WeaponSwitch : MonoBehaviour
{
    public bool gunUpgraded;
    public int selectedWeapon = 0;
    void Start()
    {
        SelectWeapon();
        gunUpgraded = false;
    }

    // Update is called once per frame
    void Update()
    {
        int previousSelectedWeapon = selectedWeapon;
        if(Input.GetAxis("Mouse ScrollWheel") > 0f)
        {
            selectedWeapon = (selectedWeapon + 1) % transform.childCount;
        }

        if(Input.GetKeyDown(KeyCode.Alpha1))
        {
            selectedWeapon = 0;
        }

        if(Input.GetKeyDown(KeyCode.Alpha2)) 
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
        foreach (Transform weapon in transform)  // make sure only one weapon is enabled
        {
            if(i == selectedWeapon)
            {
                weapon.gameObject.SetActive(true);
            }
            else
            {
                weapon.gameObject.SetActive(false);
            }
            i++;
        }
    }

    void checkGunUpgraded()
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
