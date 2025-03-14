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

    [Header("Interaction")]
    public float interactionDistance = 3f;
    public GameObject interactionUI;            
    public TextMeshProUGUI interactionText;

    [Header("Player")]
    public Transform player, player_camera;

    private void Start()
    {
        interactionUI.SetActive(false);
    }

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
            // If the object hit by the ray is interactable
            if (hitinfo.collider.gameObject.TryGetComponent(out IInteractable interactObj))
            {
                // Show the interaction UI
                interactionUI.SetActive(true);

                // When player presses 'E', interact with the object
                if (Input.GetKeyDown(KeyCode.E))
                {
                    interactObj.Interact();
                }
            }
            else
            {
                // Hide the interaction UI if the player is not looking at an interactable object
                interactionUI.SetActive(false);
            }
        }
        else
        {
            // Hide the interaction UI if the ray doesn't hit anything
            interactionUI.SetActive(false);
        }
    }
}
