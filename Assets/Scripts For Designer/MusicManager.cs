using UnityEngine;
using System.Collections;

public class MusicManager : MonoBehaviour
{
    [Header("Music Audio")]
    public AudioSource musicSource;
    public AudioClip[] dayMusicClips;
    public AudioClip[] nightMusicClips;

    [Header("Ambiance Audio")]
    public AudioSource ambianceSource;
    public AudioClip[] dayAmbianceClips;
    public AudioClip[] nightAmbianceClips;

    [Header("Radio Music (Safe Zone)")]
    public AudioClip[] radioMusicDayClips;
    public AudioClip[] radioMusicNightClips;

    [Header("Time Reference")]
    public TimeController timeController;

    [Header("Fade Settings")]
    public float fadeDuration = 2f;

    private bool previousIsDayTime;
    private bool isInSafeZone = false;

    private Coroutine currentMusicFade;
    private Coroutine currentAmbianceFade;

    void Start()
    {
        if (timeController == null)
        {
            Debug.LogError("TimeManager reference is missing!");
            enabled = false;
            return;
        }

        previousIsDayTime = timeController.isDayTime;
        PlayAudioBasedOnTime(previousIsDayTime, immediate: true);
    }

    void Update()
    {
        if (timeController.isDayTime != previousIsDayTime)
        {
            previousIsDayTime = timeController.isDayTime;
            PlayAudioBasedOnTime(previousIsDayTime);
        }
    }

    void PlayAudioBasedOnTime(bool isDay, bool immediate = false)
    {
        // Pick music based on time and safe zone
        AudioClip[] musicClips;
        if (isInSafeZone)
        {
            musicClips = isDay ? radioMusicDayClips : radioMusicNightClips;
        }
        else
        {
            musicClips = isDay ? dayMusicClips : nightMusicClips;
        }

        AudioClip[] ambianceClips = isDay ? dayAmbianceClips : nightAmbianceClips;

        AudioClip selectedMusic = GetRandomClip(musicClips);
        AudioClip selectedAmbiance = GetRandomClip(ambianceClips);

        if (immediate)
        {
            PlayImmediate(musicSource, selectedMusic);
            PlayImmediate(ambianceSource, selectedAmbiance);
        }
        else
        {
            if (selectedMusic != null)
            {
                if (currentMusicFade != null)
                    StopCoroutine(currentMusicFade);
                currentMusicFade = StartCoroutine(FadeOutIn(musicSource, selectedMusic));
            }

            if (selectedAmbiance != null)
            {
                if (currentAmbianceFade != null)
                    StopCoroutine(currentAmbianceFade);
                currentAmbianceFade = StartCoroutine(FadeOutIn(ambianceSource, selectedAmbiance));
            }
        }
    }

    AudioClip GetRandomClip(AudioClip[] clips)
    {
        return clips != null && clips.Length > 0 ? clips[Random.Range(0, clips.Length)] : null;
    }

    void PlayImmediate(AudioSource source, AudioClip clip)
    {
        if (clip == null) return;

        source.clip = clip;
        source.volume = 1f;
        source.Play();
    }

    IEnumerator FadeOutIn(AudioSource source, AudioClip newClip)
    {
        float startVolume = source.volume;

        // Fade out
        for (float t = 0; t < fadeDuration; t += Time.deltaTime)
        {
            source.volume = Mathf.Lerp(startVolume, 0f, t / fadeDuration);
            yield return null;
        }

        source.volume = 0f;
        source.Stop();
        source.clip = newClip;
        source.Play();

        // Fade in
        for (float t = 0; t < fadeDuration; t += Time.deltaTime)
        {
            source.volume = Mathf.Lerp(0f, 1f, t / fadeDuration);
            yield return null;
        }

        source.volume = 1f;
    }

    // ---- SAFE ZONE TRIGGER INTERFACE ----

    public void EnterSafeZone()
    {
        if (!isInSafeZone)
        {
            isInSafeZone = true;
            PlayAudioBasedOnTime(timeController.isDayTime);
        }
    }

    public void ExitSafeZone()
    {
        if (isInSafeZone)
        {
            isInSafeZone = false;
            PlayAudioBasedOnTime(timeController.isDayTime);
        }
    }
}
