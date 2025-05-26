using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class NotebookBehaviour : MonoBehaviour
{
    public Animator notebookAnimator;
    private bool isNotebookOpen = false;

    public MonoBehaviour playerController;
    public MonoBehaviour cameraLookScript;

    [SerializeField] GameObject bow1;
   // [SerializeField] GameObject bow2;
    [SerializeField] GameObject gun1;
    [SerializeField] GameObject gun2;

    private CameraController camController;

    void Start()
    {
        Cursor.visible = false;
        Cursor.lockState = CursorLockMode.Locked;

        camController = cameraLookScript as CameraController;
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
                notebookAnimator.SetTrigger("NotebookOpen");

                if (camController != null)
                    camController.canRotate = false;

                StartCoroutine(HandleNotebookOpen());
            }
            else
            {
                notebookAnimator.SetTrigger("NotebookClose");

                if (camController != null)
                    camController.canRotate = true;

                StartCoroutine(HandleNotebookClose());
            }

            isNotebookOpen = !isNotebookOpen;
            Debug.Log("Toggled Notebook animation");
        }
    }

    IEnumerator HandleNotebookOpen()
    {
        // Give the animation a moment to start (realtime so it works even with timescale = 0)
        yield return new WaitForSecondsRealtime(0.1f);

        // Freeze game time


        // Disable weapons and player controls
        bow1.SetActive(false);
      //  bow2.SetActive(false);
        gun1.SetActive(false);
        gun2.SetActive(false);

        Cursor.visible = true;
        Cursor.lockState = CursorLockMode.None;

        if (playerController != null)
            playerController.enabled = false;

        if (cameraLookScript != null)
            cameraLookScript.enabled = false;
    }

    IEnumerator HandleNotebookClose()
    {
        // Restore time


        yield return new WaitForSeconds(0.1f); // Normal wait now that timescale is restored

        bow1.SetActive(true);
      //  bow2.SetActive(true);
        gun1.SetActive(true);
        gun2.SetActive(true);

        Cursor.visible = false;
        Cursor.lockState = CursorLockMode.Locked;

        if (playerController != null)
            playerController.enabled = true;

        if (cameraLookScript != null)
            cameraLookScript.enabled = true;
    }
}
