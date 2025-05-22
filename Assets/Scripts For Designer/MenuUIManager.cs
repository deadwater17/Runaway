using UnityEngine;
using UnityEngine.UI;
using System.Collections;

public class MenuUIManager : MonoBehaviour
{
    public Animator cameraAnimator;
    public CanvasGroup mainMenuCanvasGroup;
    public float fadeDuration = 0.5f;

    [Header("Optional Buttons")]
    public Button settingsButton;
    public Button returnButton;
    public Button playButton;
    public Button quitButton;

    void Start()
    {
        if (settingsButton != null)
            settingsButton.onClick.AddListener(RotateToSettings);

        if (returnButton != null)
            returnButton.onClick.AddListener(ReturnToMainMenu);

        if (playButton != null)
            playButton.onClick.AddListener(() => Debug.Log("Play Pressed"));

        if (quitButton != null)
            quitButton.onClick.AddListener(() => Application.Quit());
    }

    public void RotateToSettings()
    {
        Debug.Log("Rotating to Settings via Animation...");
        cameraAnimator.SetTrigger("ToSettings");
        StartCoroutine(FadeOutMainMenu());
    }

    public void ReturnToMainMenu()
    {
        Debug.Log("Returning to Main Menu via Animation...");
        cameraAnimator.SetTrigger("ToMenu");
        StartCoroutine(FadeInMainMenu());
    }

    IEnumerator FadeOutMainMenu()
    {
        float elapsed = 0f;
        while (elapsed < fadeDuration)
        {
            elapsed += Time.deltaTime;
            mainMenuCanvasGroup.alpha = Mathf.Lerp(1f, 0f, elapsed / fadeDuration);
            yield return null;
        }

        mainMenuCanvasGroup.alpha = 0f;
        mainMenuCanvasGroup.interactable = false;
        mainMenuCanvasGroup.blocksRaycasts = false;
    }

    IEnumerator FadeInMainMenu()
    {
        float elapsed = 0f;
        while (elapsed < fadeDuration)
        {
            elapsed += Time.deltaTime;
            mainMenuCanvasGroup.alpha = Mathf.Lerp(0f, 1f, elapsed / fadeDuration);
            yield return null;
        }

        mainMenuCanvasGroup.alpha = 1f;
        mainMenuCanvasGroup.interactable = true;
        mainMenuCanvasGroup.blocksRaycasts = true;
    }
}
