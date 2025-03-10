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
    [Header("Interaction")]
    public float interactionDistance = 3f;
    public GameObject interactionUI;
    public TextMeshProUGUI interactionText;

    [Header("Player")]
    public Transform player, player_camera;


    private void Update()
    {
        InteractionClick();
    }

    void InteractionClick()
    {
        if (Input.GetKeyDown(KeyCode.E))
        {
            Ray r =  new Ray(player_camera.position, player_camera.forward);
            if (Physics.Raycast(r, out RaycastHit hitinfo, interactionDistance))
            {
                if (hitinfo.collider.gameObject.TryGetComponent(out IInteractable interactObj))
                {
                    interactionUI.SetActive(true);
                    interactObj.Interact();
                }
                else
                {
                    interactionUI.SetActive(false);
                }
            }
        }
    }

}
