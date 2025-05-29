using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class NotebookBehaviour : MonoBehaviour
{
    public Animator notebookAnimator;
    private bool isNotebookOpen;
    public GameObject weaponHolder;
    public Camera mainCamera;
    public MonoBehaviour playerController;
    public MonoBehaviour cameraLookScript;

    private CameraController camController;
    public AudioSource audioSource;
    public AudioClip audioClip;

    [SerializeField] GameObject notebook;

    void Start()
    {
        Cursor.visible = false;
        Cursor.lockState = CursorLockMode.Locked;

        camController = cameraLookScript as CameraController;

        isNotebookOpen = false;
        notebook.SetActive(false);
    }

    void Update()
    {
        OpenNotebook();
    }

    void OpenNotebook()
    {
        if (Input.GetKeyDown(KeyCode.Q) && notebookAnimator != null)
        {
            Debug.Log("Q is being perssed");
            if (!isNotebookOpen)
            {
                //notebookAnimator.SetTrigger("NotebookOpen");
                notebook.SetActive(true);

                audioSource.PlayOneShot(audioClip);

                if (camController != null)
                    camController.canRotate = false;

                StartCoroutine(HandleNotebookOpen());
                isNotebookOpen = true;
                Debug.Log("Open Notebook animation");
            }
            else if (isNotebookOpen)
            {
                //notebookAnimator.SetTrigger("NotebookClose");
                notebook.SetActive(false);

                if (camController != null)
                    camController.canRotate = true;

                StartCoroutine(HandleNotebookClose());
                isNotebookOpen = false;
                Debug.Log("Close Notebook animation");
            }
            
        }
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
    }

    IEnumerator HandleNotebookClose()
    {
        // Restore time
        Cursor.visible = false;
        Cursor.lockState = CursorLockMode.Locked;

        yield return new WaitForSeconds(0.1f); // Normal wait now that timescale is restored
        weaponHolder.SetActive(true);
        mainCamera.fieldOfView = 50f;
        //bow1.SetActive(true);
        //gun1.SetActive(true);
        //gun2.SetActive(true);

        if (playerController != null)
            playerController.enabled = true;

        if (cameraLookScript != null)
            cameraLookScript.enabled = true;

        
    }
}
