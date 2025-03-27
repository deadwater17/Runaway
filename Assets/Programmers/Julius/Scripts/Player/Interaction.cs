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

        // Raycast to check what the player is looking at
        if (Physics.Raycast(r, out RaycastHit hitinfo, interactionDistance))
        {
            // If the object hit by the ray has an ObjectUI component
            if (hitinfo.collider.gameObject.TryGetComponent(out ObjectUI objectUI))
            {
                // Notify the ObjectUI that it is being looked at
                objectUI.SetLookedAt(true);

                // If the object is also interactable, handle interaction
                if (hitinfo.collider.gameObject.TryGetComponent(out IInteractable interactObj))
                {
                    LookedAt = true;

                    // When player presses 'E', interact with the object
                    if (Input.GetKeyDown(KeyCode.E))
                    {
                        interactObj.Interact();
                    }
                }
            }
            else
            {
                // If the object does not have an ObjectUI, reset LookedAt
                LookedAt = false;

                // Disable the Interact_ObjectUI if the raycast hits a non-interactable object
                if (hitinfo.collider.gameObject.TryGetComponent(out ObjectUI nonInteractableUI))
                {
                    nonInteractableUI.SetLookedAt(false);
                }
            }
        }
        else
        {
            // If the ray doesn't hit anything, reset LookedAt and disable all ObjectUIs
            LookedAt = false;

            // Find all ObjectUI components in the scene and disable them
            ObjectUI[] allObjectUIs = FindObjectsOfType<ObjectUI>();
            foreach (ObjectUI ui in allObjectUIs)
            {
                ui.SetLookedAt(false);
            }
        }
    }
}