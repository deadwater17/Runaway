using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class NotebookBehaviour : MonoBehaviour
{
    public Animator notebookAnimator;
    private bool isNotebookOpen = false;
    public GameObject weaponHolder;
    public Camera mainCamera;
    public MonoBehaviour playerController;
    public MonoBehaviour cameraLookScript;

    private CameraController camController;
    public AudioSource audioSource;
    public AudioClip audioClip;

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
                //notebookAnimator.SetTrigger("NotebookOpen");
                notebookAnimator.SetBool("notebookStatus", false);
                audioSource.PlayOneShot(audioClip);

                if (camController != null)
                    camController.canRotate = false;

                StartCoroutine(HandleNotebookOpen());
                Debug.Log("Open Notebook animation");
            }
            else if (isNotebookOpen)
            {
                //notebookAnimator.SetTrigger("NotebookClose");
                notebookAnimator.SetBool("notebookStatus", true);

                if (camController != null)
                    camController.canRotate = true;

                StartCoroutine(HandleNotebookClose());
                Debug.Log("Close Notebook animation");


            }
        }
        Debug.Log("Notebook is " + isNotebookOpen);
    }

    IEnumerator HandleNotebookOpen()
    {
        Cursor.visible = true;
        Cursor.lockState = CursorLockMode.None;
        // Give the animation a moment to start (realtime so it works even with timescale = 0)
        yield return new WaitForSecondsRealtime(0.1f);
        weaponHolder.SetActive(false);
        mainCamera.fieldOfView = 50f;


        if (playerController != null)
            playerController.enabled = false;

        if (cameraLookScript != null)
            cameraLookScript.enabled = false;
            
        isNotebookOpen = true;
    }

    IEnumerator HandleNotebookClose()
    {
        // Restore time
        Cursor.visible = false;
        Cursor.lockState = CursorLockMode.Locked;

        yield return new WaitForSeconds(0.1f); // Normal wait now that timescale is restored
        weaponHolder.SetActive(true);
        mainCamera.fieldOfView = 50f;


        if (playerController != null)
            playerController.enabled = true;

        if (cameraLookScript != null)
            cameraLookScript.enabled = true;

        isNotebookOpen = false;
    }
}
