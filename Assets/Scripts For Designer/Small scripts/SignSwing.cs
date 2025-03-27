using UnityEngine;
using UnityEngine.UI;
using System.Collections;

public class UIPushUp : MonoBehaviour
{
    public RectTransform targetImage;  // Assign your UI Image's RectTransform in the Inspector
    public float startY = -35f;        // Starting Y position
    public float endY = -21.5f;        // Ending Y position
    public float pushDuration = 1f;    // Duration of the push animation

    private bool isAnimating = false;

    void Start()
    {
        // Initialize the starting position
        Vector2 startPosition = targetImage.anchoredPosition;
        startPosition.y = startY;
        targetImage.anchoredPosition = startPosition;

        // Add a listener to the button click event
        GetComponent<Button>().onClick.AddListener(StartPushUp);
    }

    public void StartPushUp()
    {
        if (!isAnimating)
        {
            StartCoroutine(PushUpCoroutine());
        }
    }

    private IEnumerator PushUpCoroutine()
    {
        isAnimating = true;
        float elapsedTime = 0f;
        Vector2 startPosition = targetImage.anchoredPosition;
        Vector2 endPosition = new Vector2(startPosition.x, endY);

        while (elapsedTime < pushDuration)
        {
            float t = elapsedTime / pushDuration;
            float smoothT = Mathf.SmoothStep(0f, 1f, t);  // Smooth step for deceleration effect
            targetImage.anchoredPosition = Vector2.Lerp(startPosition, endPosition, smoothT);
            elapsedTime += Time.deltaTime;
            yield return null;
        }

        // Ensure the final position is set
        targetImage.anchoredPosition = endPosition;
        isAnimating = false;
    }
}
