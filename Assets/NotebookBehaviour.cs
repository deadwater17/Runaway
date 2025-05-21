using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class NotebookBehaviour : MonoBehaviour
{
    public Animator notebookAnimator; // Reference to the animator
    private bool isNotebookOpen = false;

    public MonoBehaviour playerController; // Assign your player movement script
    public MonoBehaviour cameraLookScript; // Assign your mouse/camera look script

    [SerializeField] GameObject bow1;
    //[SerializeField] GameObject bow2 = null;
    [SerializeField] GameObject gun1;
    [SerializeField] GameObject gun2;
    void Start()
    {
        Cursor.visible = false;
        Cursor.lockState = CursorLockMode.Locked;
    }

    void Update()
    {
        OpenNotebook();
    }

    void OpenNotebook()
    {
        if (Input.GetKeyDown(KeyCode.Tab) && notebookAnimator != null)
        {
            if (!isNotebookOpen)
            {
                notebookAnimator.SetTrigger("notebookOpen");
                isNotebookOpen = true;

                bow1.SetActive(false);
                gun1.SetActive(false);
                gun2.SetActive(false);

                // Show cursor
                Cursor.visible = true;
                Cursor.lockState = CursorLockMode.None;

                // Disable player movement and camera look
                if (playerController != null)
                    playerController.enabled = false;

                if (cameraLookScript != null)
                    cameraLookScript.enabled = false;
            }
            else
            {
                notebookAnimator.SetTrigger("notebookClose");
                isNotebookOpen = false;
                
                bow1.SetActive(true);
                gun1.SetActive(true);
                gun2.SetActive(true);

                // Hide cursor
                Cursor.visible = false;
                Cursor.lockState = CursorLockMode.Locked;

                // Enable player movement and camera look
                if (playerController != null)
                    playerController.enabled = true;

                if (cameraLookScript != null)
                    cameraLookScript.enabled = true;
            }

            Debug.Log("Toggled Notebook animation");
        }
    }
}
