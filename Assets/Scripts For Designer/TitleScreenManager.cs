using UnityEngine;
using UnityEngine.SceneManagement;
using UnityEngine.UI;
using System.Collections;

public class TitleScreenManager : MonoBehaviour
{
    public Image runawayTitle; // Reference to the "RUNAWAY" sprite
    public Button startButton; // Start button
    public Image fadePanel; // Fade panel for transition

    private void Start()
    {
        startButton.onClick.AddListener(StartGameTransition);
        StartCoroutine(MoveTitleUp());
    }

    IEnumerator MoveTitleUp()
    {
        // Set the start and end position
        Vector3 startPosition = runawayTitle.rectTransform.anchoredPosition;
        Vector3 endPosition = new Vector3(startPosition.x, 300, startPosition.z);

        float duration = 3f; // Move over 3 seconds
        float elapsedTime = 0f;

        while (elapsedTime < duration)
        {
            elapsedTime += Time.deltaTime;
            runawayTitle.rectTransform.anchoredPosition = Vector3.Lerp(startPosition, endPosition, elapsedTime / duration);
            yield return null;
        }

        // Ensure final position is exactly at 300
        runawayTitle.rectTransform.anchoredPosition = endPosition;
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
            panelColor.a = Mathf.Lerp(0, 1, elapsedTime / duration);
            fadePanel.color = panelColor;
            yield return null;
        }

        SceneManager.LoadScene("MainMenu");
    }
}
