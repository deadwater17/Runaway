using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class weaponADS : MonoBehaviour
{
    public Transform weapon;
    public Transform aimPosition;
    public Transform defaultPos;
    public Camera fpsCam;
    public float aimSpeed = 10f;
    public float zoomFOV = 40f;
    float defaultFOV;
    bool isAiming = false;
    void Start()
    {
        defaultFOV = fpsCam.fieldOfView;
    }

    // Update is called once per frame
    void Update()
    {
        if (Input.GetMouseButton(1)) 
        {
            isAiming = true;
        }
        if (Input.GetMouseButtonUp(1))
        {
            isAiming = false;
        }
        if (isAiming)
        {
            weapon.position = Vector3.Lerp(weapon.position, aimPosition.position, Time.deltaTime * aimSpeed);
            weapon.rotation = Quaternion.Slerp(weapon.rotation, aimPosition.rotation, Time.deltaTime * aimSpeed);
            fpsCam.fieldOfView = Mathf.Lerp(fpsCam.fieldOfView, zoomFOV, Time.deltaTime * aimSpeed);
        }
        else
        {
            weapon.position = Vector3.Lerp(weapon.position, defaultPos.position, Time.deltaTime * aimSpeed);
            weapon.rotation = Quaternion.Slerp(weapon.rotation, defaultPos.rotation, Time.deltaTime * aimSpeed);
            fpsCam.fieldOfView = Mathf.Lerp(fpsCam.fieldOfView, defaultFOV, Time.deltaTime * aimSpeed);
        }
        Debug.Log("Current FOV: " + fpsCam.fieldOfView);
    }

    
}
