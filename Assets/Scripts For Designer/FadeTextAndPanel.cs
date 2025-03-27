using UnityEngine;
using UnityEngine.UI;
using UnityEngine.SceneManagement;
using System.Collections;

public class FadeTextAndPanel : MonoBehaviour
{
    public CanvasGroup uiCanvasGroup; // Assign CanvasGroup (should cover panel + text)
    public float fadeDuration = 1f; // Fade-out duration
    public string sceneToLoad = "Game"; // Scene to load

    private bool isFading = false;

    private void Start()
    {
        if (uiCanvasGroup != null)
        {
            uiCanvasGroup.alpha = 1; // Ensure UI is fully visible at start
        }
    }

    public void StartFade()
    {
        if (!isFading)
        {
            Debug.Log("Starting fade for text and panel.");
            StartCoroutine(FadeOutAndLoadScene());
        }
    }

    IEnumerator FadeOutAndLoadScene()
    {
        isFading = true;
        float elapsedTime = 0f;

        while (elapsedTime < fadeDuration)
        {
            elapsedTime += Time.deltaTime;
            float t = elapsedTime / fadeDuration;
            uiCanvasGroup.alpha = Mathf.Lerp(1, 0, t); // Fade both text and panel

            yield return null;
        }

        uiCanvasGroup.alpha = 0; // Ensure fully faded out

        Debug.Log("Fade completed. Loading Scene: " + sceneToLoad);

        // Force Unity to reload lighting settings (helps fix lighting issues)
        LightProbes.TetrahedralizeAsync();

        // Load the scene
        SceneManager.LoadScene(sceneToLoad);
    }
}
