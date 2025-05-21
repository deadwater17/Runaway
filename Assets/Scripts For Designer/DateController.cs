using UnityEngine;
using UnityEngine.UI;
using System.Collections;

public class DateController : MonoBehaviour
{
    public Image fadeImage; // Assign your full-screen UI Image
    public float fadeDuration = 4f;

    public Transform playerObj; // Assign PlayerObj
    public Vector3 playerResetPosition = new Vector3(-42.09f, -8.88f, -12.12f);
    public Vector3 playerResetRotation = new Vector3(0f, 102.03f, 0f);

    public int currentDay = 1;

    private TimeController timeController;

    private void Start()
    {
        timeController = FindObjectOfType<TimeController>();
    }

    public void AdvanceToMorning()
    {
        StartCoroutine(FadeAndReset());
    }

    private IEnumerator FadeAndReset()
    {
        // 1. Fade to black
        if (fadeImage != null)
        {
            fadeImage.gameObject.SetActive(true);
            float t = 0f;
            Color c = fadeImage.color;
            while (t < fadeDuration)
            {
                t += Time.deltaTime;
                c.a = Mathf.Lerp(0f, 1f, t / fadeDuration);
                fadeImage.color = c;
                yield return null;
            }
        }

        // 2. Tell TimeController to sleep until 6 AM
        if (timeController != null)
        {
            timeController.sleepUntil(6f); // 6 AM
        }

        // 3. Reset player position and rotation
        if (playerObj != null)
        {
            playerObj.position = playerResetPosition;
            playerObj.eulerAngles = playerResetRotation;
        }

        // 4. Advance the day
        currentDay++;

        // [Optional future hook for UI transition here]
    }
}
