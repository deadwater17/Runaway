using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class weaponADS : MonoBehaviour
{
    public Transform weapon;
    public Transform aimPosition;
    public Transform defaultPos;
    public Camera fpsCam;
    public float aimSpeed = 6f;
    public float zoomFOV = 40f;
    float scopeEffectFov = 10f;
    float defaultFOV;
    public bool isAiming = false;
    public bool isScope = false;
    public GameObject scopeOverlay;
    public GameObject weaponCamera;
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
            if(isScope == true) // gun scope 
            {
                StartCoroutine(DelayedScope());
            }
        }
        if (Input.GetMouseButtonUp(1))
        {
            isAiming = false;
            if (isScope == true) // gun scope
            {
                StopAllCoroutines();
                scopeOverlay.SetActive(false);
                weaponCamera.SetActive(true);
                //fpsCam.fieldOfView = defaultFOV;
            }
        }
        if (isAiming)
        {
            weapon.position = Vector3.Lerp(weapon.position, aimPosition.position, Time.deltaTime * aimSpeed);
            weapon.rotation = Quaternion.Slerp(weapon.rotation, aimPosition.rotation, Time.deltaTime * aimSpeed);
            if (!isScope)
            {
                fpsCam.fieldOfView = Mathf.Lerp(fpsCam.fieldOfView, zoomFOV, Time.deltaTime * aimSpeed);
            }
            else
            {
                fpsCam.fieldOfView = Mathf.Lerp(fpsCam.fieldOfView, scopeEffectFov, Time.deltaTime * aimSpeed);
            }
            
        }
        else
        {
            weapon.position = Vector3.Lerp(weapon.position, defaultPos.position, Time.deltaTime * aimSpeed);
            weapon.rotation = Quaternion.Slerp(weapon.rotation, defaultPos.rotation, Time.deltaTime * aimSpeed);
            fpsCam.fieldOfView = Mathf.Lerp(fpsCam.fieldOfView, defaultFOV, Time.deltaTime * aimSpeed);
            
        }
        
    }

    IEnumerator DelayedScope()
    {
        yield return new WaitForSeconds(0.2f); // Wait for  seconds
        scopeOverlay.SetActive(true);
        weaponCamera.SetActive(false);
        fpsCam.fieldOfView = scopeEffectFov;
    }


}
