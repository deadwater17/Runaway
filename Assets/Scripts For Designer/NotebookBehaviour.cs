using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class NotebookBehaviour : MonoBehaviour
{
    private bool isNotebookOpen = false;
    public GameObject weaponHolder;
    public Camera mainCamera;
    public MonoBehaviour playerController;
    public MonoBehaviour cameraLookScript;

    private CameraController camController;
    public GameObject notebook;

    void Start()
    {
        Cursor.visible = false;
        Cursor.lockState = CursorLockMode.Locked;

        camController = cameraLookScript as CameraController;

        if (notebook != null)
            notebook.SetActive(false);
    }

    void Update()
    {
        OpenNotebook();
    }

    void OpenNotebook()
    {
        if (Input.GetKeyDown(KeyCode.Tab))
        {
            isNotebookOpen = !isNotebookOpen;

            notebook.SetActive(isNotebookOpen);

            weaponHolder.SetActive(!isNotebookOpen);
            mainCamera.fieldOfView = 50f;
            Cursor.visible = isNotebookOpen;
            Cursor.lockState = isNotebookOpen ? CursorLockMode.None : CursorLockMode.Locked;

           

            if (playerController != null)
                playerController.enabled = !isNotebookOpen;

            if (cameraLookScript != null)
                cameraLookScript.enabled = !isNotebookOpen;

            if (camController != null)
                camController.canRotate = !isNotebookOpen;

            Debug.Log(isNotebookOpen ? "Notebook opened" : "Notebook closed");
        }
    }
}