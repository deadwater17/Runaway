using UnityEngine;
using UnityEngine.UI;
using UnityEngine.SceneManagement;
using System.Collections;

public class ButtonFadeTransition : MonoBehaviour
{
    public Image fadePanel; // Assign a full-screen black UI Image
    public string sceneToLoad; // Ensure this is set in the Inspector
    public float fadeDuration = 1f; // Duration of fade effect
    public float titleFadeDuration = 1.5f; // Duration for title fade out

    private void Start()
    {
        // Ensure fade panel starts invisible
        if (fadePanel != null)
        {
            Color panelColor = fadePanel.color;
            panelColor.a = 0;
            fadePanel.color = panelColor;
        }

        // Attach click event to button
        Button button = GetComponent<Button>();
        if (button != null)
        {
            Debug.Log("Button component found, click event attached.");
            button.onClick.AddListener(StartFade);
        }
        else
        {
            Debug.LogError("Button component missing on GameObject: " + gameObject.name);
        }
    }

    void StartFade()
    {
        Debug.Log("Button clicked! Starting fade effect.");
        StartCoroutine(FadeOutAndLoadScene());
        StartCoroutine(FadeOutTitle());
    }

    IEnumerator FadeOutAndLoadScene()
    {
        if (fadePanel == null)
        {
            Debug.LogError("Fade panel is not assigned!");
            yield break;
        }

        float elapsedTime = 0f;
        Color panelColor = fadePanel.color;

        while (elapsedTime < fadeDuration)
        {
            elapsedTime += Time.deltaTime;
            float alpha = Mathf.Lerp(0, 1, elapsedTime / fadeDuration);
            panelColor.a = alpha;
            fadePanel.color = panelColor;
            yield return null;
        }

        if (!string.IsNullOrEmpty(sceneToLoad))
        {
            Debug.Log("Fade complete. Loading scene: " + sceneToLoad);
            SceneManager.LoadScene(sceneToLoad);
        }
        else
        {
            Debug.LogError("Scene name not set! Assign it in the Inspector.");
        }
    }

    IEnumerator FadeOutTitle()
    {
        GameObject titleObject = GameObject.Find("Title");
        if (titleObject == null)
        {
            Debug.LogError("Title not found in scene! Make sure it is named exactly 'Title'.");
            yield break;
        }

        Text titleText = titleObject.GetComponent<Text>();
        Image titleImage = titleObject.GetComponent<Image>();
        SpriteRenderer titleSprite = titleObject.GetComponent<SpriteRenderer>();

        Color titleColor = Color.white;

        if (titleText != null)
            titleColor = titleText.color;
        else if (titleImage != null)
            titleColor = titleImage.color;
        else if (titleSprite != null)
            titleColor = titleSprite.color;
        else
        {
            Debug.LogError("Title does not have a Text, Image, or SpriteRenderer component!");
            yield break;
        }

        float elapsedTime = 0f;
        while (elapsedTime < titleFadeDuration)
        {
            elapsedTime += Time.deltaTime;
            float alpha = Mathf.Lerp(1, 0, elapsedTime / titleFadeDuration);

            if (titleText != null)
                titleText.color = new Color(titleColor.r, titleColor.g, titleColor.b, alpha);
            else if (titleImage != null)
                titleImage.color = new Color(titleColor.r, titleColor.g, titleColor.b, alpha);
            else if (titleSprite != null)
                titleSprite.color = new Color(titleColor.r, titleColor.g, titleColor.b, alpha);

            yield return null;
        }

        Debug.Log("Title fully faded out.");
    }
}
