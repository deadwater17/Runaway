using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

interface IInteractable
{
    public void Interact();
}

public class Interaction : MonoBehaviour
{
    [Header("Interaction")]
    public float interactionDistance = 3f;

    [Header("Player")]
    public Transform player, player_camera;

    void Update()
    {
        if (Input.GetKeyDown(KeyCode.E))
        {
            Ray r =  new Ray(player_camera.position, player_camera.forward);
            if (Physics.Raycast(r, out RaycastHit hitinfo, interactionDistance))
            {
                if (hitinfo.collider.gameObject.TryGetComponent(out IInteractable interactObj))
                {
                    interactObj.Interact();
                }
            }
        }
    }

}
