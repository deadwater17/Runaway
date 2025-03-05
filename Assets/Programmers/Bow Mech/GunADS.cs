using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class GunADS : MonoBehaviour
{
    public Transform gun;
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
            gun.position = Vector3.Lerp(gun.position, aimPosition.position, Time.deltaTime * aimSpeed);
            gun.rotation = Quaternion.Slerp(gun.rotation, aimPosition.rotation, Time.deltaTime * aimSpeed);
            fpsCam.fieldOfView = Mathf.Lerp(fpsCam.fieldOfView, zoomFOV, Time.deltaTime * aimSpeed);
        }
        else
        {
            gun.position = Vector3.Lerp(gun.position, defaultPos.position, Time.deltaTime * aimSpeed);
            gun.rotation = Quaternion.Slerp(gun.rotation, defaultPos.rotation, Time.deltaTime * aimSpeed);
            fpsCam.fieldOfView = Mathf.Lerp(fpsCam.fieldOfView, defaultFOV, Time.deltaTime * aimSpeed);
        }
        Debug.Log("Current FOV: " + fpsCam.fieldOfView);
    }

    
}
