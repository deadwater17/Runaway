using UnityEngine;
using UnityEngine.UI;

public class CameraPanner : MonoBehaviour
{
    public Camera targetCamera; // Assign the Camera to pan in the Inspector
    public float panDistance = 5f; // Distance to pan left
    public float panSpeed = 2f; // Speed of panning
    public float rotationAngle = 90f; // Rotation angle in degrees
    public float rotationDuration = 1f; // Duration of rotation
    public GameObject MM;

    private bool isMoving = false;
    private Vector3 targetPosition;
    private Quaternion targetRotation;
    private float elapsedTime = 0f;
    private float rotationElapsedTime = 0f;

    void Start()
    {
        GetComponent<Button>().onClick.AddListener(PanAndRotateCameraLeft);
    }

    void Update()
    {
        if (isMoving && targetCamera != null)
        {
            // Update panning
            elapsedTime += Time.deltaTime;
            float moveT = Mathf.Clamp01(elapsedTime * panSpeed / panDistance);
            targetCamera.transform.position = Vector3.Lerp(targetCamera.transform.position, targetPosition, moveT);

            // Update rotation
            rotationElapsedTime += Time.deltaTime;
            float rotateT = Mathf.Clamp01(rotationElapsedTime / rotationDuration);
            targetCamera.transform.rotation = Quaternion.Slerp(targetCamera.transform.rotation, targetRotation, rotateT);

            if (moveT >= 1.0f && rotateT >= 1.0f)
            {
                targetCamera.transform.position = targetPosition;
                targetCamera.transform.rotation = targetRotation;
                isMoving = false;
                elapsedTime = 0f;
                rotationElapsedTime = 0f;
            }
        }
    }

    public void PanAndRotateCameraLeft()
    {
        if (!isMoving && targetCamera != null)
        {
            targetPosition = targetCamera.transform.position + new Vector3(-panDistance, 0, 0); // Move left
            targetRotation = Quaternion.Euler(targetCamera.transform.eulerAngles.x, targetCamera.transform.eulerAngles.y - rotationAngle, targetCamera.transform.eulerAngles.z);
            isMoving = true;
            elapsedTime = 0f;
            rotationElapsedTime = 0f;

          
        }
    }
}