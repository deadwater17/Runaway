using UnityEngine;
using System.Collections;

public class CameraMoveAndFade : MonoBehaviour
{
    public Transform cameraTransform; // Assign Main Camera
    public float moveDistance = -2f; // Move Y by -2 units
    public float moveDuration = 2f; // Movement duration
    public AnimationCurve easeCurve; // Easing curve for smooth motion

    private Vector3 startPosition;
    private Vector3 targetPosition;
    private bool isMoving = false; // Prevents multiple activations

    private void Start()
    {
        startPosition = cameraTransform.position;
        targetPosition = startPosition + new Vector3(0, moveDistance, 0);
    }

    public void StartMovement()
    {
        if (!isMoving)
        {
            Debug.Log("Play button clicked! Starting camera move.");
            StartCoroutine(MoveCamera());
        }
    }

    IEnumerator MoveCamera()
    {
        isMoving = true;
        float elapsedTime = 0f;

        while (elapsedTime < moveDuration)
        {
            elapsedTime += Time.deltaTime;
            float t = elapsedTime / moveDuration;
            float easedT = easeCurve.Evaluate(t); // Apply easing curve

            // Move Camera Down
            cameraTransform.position = Vector3.Lerp(startPosition, targetPosition, easedT);

            yield return null;
        }

        // Ensure final position is exact
        cameraTransform.position = targetPosition;
        Debug.Log("Camera move completed.");
    }
}
