using UnityEngine;
using System.Collections;

public class MusicManager : MonoBehaviour
{
    [Header("Audio Sources and Clips")]
    public AudioSource audioSource;
    public AudioClip[] dayClips;
    public AudioClip[] nightClips;

    [Header("Time Reference")]
    public TimeController timeController;

    [Header("Fade Settings")]
    public float fadeDuration = 2f;

    private bool previousIsDayTime;
    private Coroutine currentFade;

    void Start()
    {
        if (timeController == null)
        {
            Debug.LogError("TimeManager reference is missing!");
            enabled = false;
            return;
        }

        previousIsDayTime = timeController.isDayTime;
        PlayMusicBasedOnTime(previousIsDayTime, immediate: true);
    }

    void Update()
    {
        if (timeController.isDayTime != previousIsDayTime)
        {
            previousIsDayTime = timeController.isDayTime;
            PlayMusicBasedOnTime(previousIsDayTime);
        }
    }

    void PlayMusicBasedOnTime(bool isDay, bool immediate = false)
    {
        AudioClip[] clips = isDay ? dayClips : nightClips;

        if (clips.Length == 0)
        {
            Debug.LogWarning("No audio clips set for " + (isDay ? "day" : "night") + " time.");
            return;
        }

        AudioClip selectedClip = clips[Random.Range(0, clips.Length)];

        if (immediate)
        {
            audioSource.clip = selectedClip;
            audioSource.volume = 1f;
            audioSource.Play();
        }
        else
        {
            if (currentFade != null)
                StopCoroutine(currentFade);

            currentFade = StartCoroutine(FadeOutIn(selectedClip));
        }
    }

    IEnumerator FadeOutIn(AudioClip newClip)
    {
        // Fade out
        float startVolume = audioSource.volume;

        for (float t = 0; t < fadeDuration; t += Time.deltaTime)
        {
            audioSource.volume = Mathf.Lerp(startVolume, 0f, t / fadeDuration);
            yield return null;
        }

        audioSource.volume = 0f;
        audioSource.Stop();
        audioSource.clip = newClip;
        audioSource.Play();

        // Fade in
        for (float t = 0; t < fadeDuration; t += Time.deltaTime)
        {
            audioSource.volume = Mathf.Lerp(0f, 1f, t / fadeDuration);
            yield return null;
        }

        audioSource.volume = 1f;
    }
}