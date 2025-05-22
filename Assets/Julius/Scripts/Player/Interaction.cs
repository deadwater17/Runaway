using System;
using System.Collections;
using System.Collections.Generic;
using TMPro;
using UnityEngine;

interface IInteractable
{
    public void Interact();
}

public class Interaction : MonoBehaviour
{
    private InventorySystem m_inventoryS;
    public bool LookedAt = false;

    [Header("Interaction")]
    public float interactionDistance = 3f;

    [Header("Player")]
    public Transform player, player_camera;


    private void Update()
    {
        InteractionClick();
    }
    void InteractionClick()
    {
        Ray r = new Ray(player_camera.position, player_camera.forward);

        if (Physics.Raycast(r, out RaycastHit hitinfo, interactionDistance))
        {
            GameObject hitObject = hitinfo.collider.gameObject;

            // Handle ObjectUI
            if (hitObject.TryGetComponent(out ObjectUI objectUI))
            {
                objectUI.SetLookedAt(true);
            }

            // Handle AnimalUI
            if (hitObject.TryGetComponent(out AnimalUI animalUI))
            {
                animalUI.SetLookedAt(true);
            }

            // Handle interaction
            if (hitObject.TryGetComponent(out IInteractable interactObj))
            {
                LookedAt = true;

                if (Input.GetKeyDown(KeyCode.E))
                {
                    interactObj.Interact();
                }
            }
        }
        else
        {
            // If the ray doesn't hit anything, reset LookedAt and disable all ObjectUIs
            LookedAt = false;

            foreach (var ui in FindObjectsOfType<ObjectUI>())
            {
                ui.SetLookedAt(false);
            }

            // Reset all AnimalUI
            foreach (var animalUI in FindObjectsOfType<AnimalUI>())
            {
                animalUI.SetLookedAt(false);
            }
        }
    }
}