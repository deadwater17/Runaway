using UnityEngine;
using UnityEngine.UI;
using System.Collections;

public class SceneFadeIn : MonoBehaviour
{
    public float fadeInDuration = 1f; // Duration for the fade-in effect
    private Image fadePanel;

    private void Start()
    {
        fadePanel = GetComponent<Image>();

        if (fadePanel == null)
        {
            Debug.LogError("FadeInPanel is missing an Image component!");
            return;
        }

        // Start fade-in effect
        StartCoroutine(FadeIn());
    }

    IEnumerator FadeIn()
    {
        float elapsedTime = 0f;
        Color panelColor = fadePanel.color;
        panelColor.a = 1; // Start fully black
        fadePanel.color = panelColor;

        while (elapsedTime < fadeInDuration)
        {
            elapsedTime += Time.deltaTime;
            panelColor.a = Mathf.Lerp(1, 0, elapsedTime / fadeInDuration);
            fadePanel.color = panelColor;
            yield return null;
        }

        // Ensure it's fully transparent at the end
        panelColor.a = 0;
        fadePanel.color = panelColor;
        fadePanel.gameObject.SetActive(false); // Disable after fade-in completes
    }
}
