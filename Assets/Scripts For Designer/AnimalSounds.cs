using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class AnimalSounds : MonoBehaviour
{
    [Header("Bear Sound Settings")]
    public AudioClip[] animalSounds; // Assign sounds in Inspector
    public float minTimeBetweenSounds = 15f;
    public float maxTimeBetweenSounds = 30f;

    [Header("Pitch Settings")]
    public float minPitch = 0.9f; // Lower pitch limit
    public float maxPitch = 1.1f; // Upper pitch limit

    private AudioSource audioSource;
    private float nextSoundTime;

    void Start()
    {
        audioSource = GetComponent<AudioSource>();
        ScheduleNextSound();
    }

    void Update()
    {
        if (!audioSource.isPlaying && Time.time >= nextSoundTime)
        {
            PlayRandomBearSound();
            ScheduleNextSound();
        }
    }

    void PlayRandomBearSound()
    {
        if (animalSounds.Length == 0) return;

        int index = Random.Range(0, animalSounds.Length);
        audioSource.pitch = Random.Range(minPitch, maxPitch); // Set random pitch
        audioSource.PlayOneShot(animalSounds[index]);
    }

    void ScheduleNextSound()
    {
        nextSoundTime = Time.time + Random.Range(minTimeBetweenSounds, maxTimeBetweenSounds);
    }
}