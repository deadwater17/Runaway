using UnityEngine;
using UnityEngine.SceneManagement;
using UnityEngine.UI;
using System.Collections;

public class TitleScreenManager : MonoBehaviour
{
    public Transform runawayTitle; // Title object
    public Button startButton;
    public Image fadePanel;

    private Vector3 finalPosition; // Store final position after slide
    private Quaternion finalRotation; // Store final rotation after slide
    private Vector3 finalScale; // Store final scale after slide

    private void Start()
    {
        startButton.onClick.AddListener(StartGameTransition);
        StartCoroutine(MoveTitleUp());
    }

    IEnumerator MoveTitleUp()
    {
        Vector3 startPosition = runawayTitle.position;
        finalPosition = new Vector3(startPosition.x, 86, startPosition.z); // Move to Y = 300

        float duration = 3f;
        float elapsedTime = 0f;

        // Ensure title starts completely flat and at default scale
        runawayTitle.rotation = Quaternion.identity;
        finalRotation = Quaternion.identity; // Store for wobble start
        finalScale = runawayTitle.localScale; // Store scale

        // Slide Up Animation
        while (elapsedTime < duration)
        {
            elapsedTime += Time.deltaTime;
            float t = Mathf.SmoothStep(0, 1, elapsedTime / duration); // Ease-out motion

            runawayTitle.position = Vector3.Lerp(startPosition, finalPosition, t);
            yield return null;
        }

        // Ensure final position, rotation, and scale are exact
        runawayTitle.position = finalPosition;
        runawayTitle.rotation = finalRotation;
        runawayTitle.localScale = finalScale;

        // Start Continuous Rotation + Scale Effect from exact end position/scale
        StartCoroutine(RotateAndScaleEffect());
    }

    IEnumerator RotateAndScaleEffect()
    {
        float speedMultiplier = 0.5f;
        float timeOffset = Time.time; // Keeps motion smooth across multiple starts

        while (true) // Loop infinitely
        {
            float time = (Time.time - timeOffset) * speedMultiplier;

            // Reduced rotation values (30% less)
            float rotationZ = Mathf.Sin(time * 2f) * 3f;
            float rotationX = Mathf.Sin(time * 1.2f) * 1.8f;
            float rotationY = Mathf.Cos(time * 1.8f) * 1.8f;

            // Scale changes slightly to add depth
            float scaleWobble = 1 + Mathf.Sin(time * 1.5f) * 0.05f;

            // Apply transformations, ensuring smooth transition from last position
            runawayTitle.rotation = finalRotation * Quaternion.Euler(rotationX, rotationY, rotationZ);
            runawayTitle.localScale = finalScale * scaleWobble;

            yield return null;
        }
    }

    void StartGameTransition()
    {
        StartCoroutine(FadeToMenu());
    }

    IEnumerator FadeToMenu()
    {
        fadePanel.gameObject.SetActive(true);
        float duration = 1.5f;
        float elapsedTime = 0f;
        Color panelColor = fadePanel.color;

        while (elapsedTime < duration)
        {
            elapsedTime += Time.deltaTime;
            float t = elapsedTime / duration; // Initialize t before using it
            t = Mathf.SmoothStep(0, 1, t); // Smooth the fade
            panelColor.a = Mathf.Lerp(0, 1, t);
            fadePanel.color = panelColor;
            yield return null;
        }

        SceneManager.LoadScene("MainMenu");
    }
}
