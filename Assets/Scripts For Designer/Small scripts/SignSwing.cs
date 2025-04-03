using UnityEngine;
using UnityEngine.UI;
using System.Collections;

public class UIPushUp : MonoBehaviour
{
    public RectTransform targetImage;  // Assign your UI Image's RectTransform in the Inspector
    public float startY = -32.2f;        // Starting Y position
    public float endY = -21.5f;        // Ending Y position
    public float pushDuration = 0.5f;    // Duration of the push animation

    private bool isAnimating = false;
    private bool isOpen = false;       // Track the current state

    // Sound Variables
    public AudioClip openSound;        // Sound to play when opening
    public AudioClip closeSound;       // Sound to play when closing
    private AudioSource audioSource;

    void Start()
    {
        // Initialize the starting position
        Vector2 startPosition = targetImage.anchoredPosition;
        startPosition.y = startY;
        targetImage.anchoredPosition = startPosition;

        // Add a listener to the button click event
        GetComponent<Button>().onClick.AddListener(TogglePushUp);

        // Initialize the audio source
        audioSource = gameObject.AddComponent<AudioSource>();
        audioSource.volume = 0.1f;  // Set volume to 30%
    }

    public void TogglePushUp()
    {
        if (!isAnimating)
        {
            // Play the appropriate sound based on the current state
            if (isOpen)
            {
                PlaySound(closeSound);
            }
            else
            {
                PlaySound(openSound);
            }

            StartCoroutine(PushUpCoroutine());
            isOpen = !isOpen;  // Toggle the state
        }
    }

    // Play the specified sound
    private void PlaySound(AudioClip clip)
    {
        if (clip != null)
        {
            audioSource.PlayOneShot(clip);
        }
    }

    private IEnumerator PushUpCoroutine()
    {
        isAnimating = true;
        float elapsedTime = 0f;
        Vector2 startPosition = targetImage.anchoredPosition;
        Vector2 endPosition = isOpen ? new Vector2(startPosition.x, startY) : new Vector2(startPosition.x, endY);

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
