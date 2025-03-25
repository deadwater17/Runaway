using UnityEngine;
using UnityEngine.UI;
using UnityEngine.SceneManagement;
using System.Collections;

public class FadeToBlack : MonoBehaviour
{
    public Image fadePanel; // Assign UI Fade Panel
    public float fadeDuration = 2f; // Fade-out duration
    public string sceneToLoad = "Game"; // Set in Inspector

    private bool isFading = false;

    private void Start()
    {
        if (fadePanel != null)
        {
            Color panelColor = fadePanel.color;
            panelColor.a = 0; // Ensure it's transparent at start
            fadePanel.color = panelColor;
        }
    }




    public void StartFade()
    {
        if (!isFading)
        {
            Debug.Log("Starting fade to black.");
            StartCoroutine(FadeOutAndLoadScene());
        }
    }

    IEnumerator FadeOutAndLoadScene()
    {
        isFading = true;
        float elapsedTime = 0f;
        Color panelColor = fadePanel.color;

        while (elapsedTime < fadeDuration)
        {
            elapsedTime += Time.deltaTime;
            float t = elapsedTime / fadeDuration;
            panelColor.a = Mathf.Lerp(0, 1, t); // Smooth fade to black
            fadePanel.color = panelColor;

            yield return null;
        }

        // Ensure fully black screen
        panelColor.a = 1;
        fadePanel.color = panelColor;

        Debug.Log("Fade completed. Loading Scene: " + sceneToLoad);

        // **Force Unity to reload lighting settings**
        LightProbes.TetrahedralizeAsync(); // Ensures correct lighting probes

        // Load the scene
        SceneManager.LoadScene(sceneToLoad);

        
    }
}
