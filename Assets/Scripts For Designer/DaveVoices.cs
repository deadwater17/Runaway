using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class DaveVoices : MonoBehaviour
{
    public AudioClip firstTimeVoiceLine;      // Special voice line for the first time
    public AudioClip[] otherVoiceLines;       // Random voice lines for subsequent entries

    private AudioSource audioSource;
    private bool hasPlayedFirstLine = false;

    void Start()
    {
        audioSource = GetComponent<AudioSource>();
        if (audioSource == null)
        {
            Debug.LogWarning("AudioSource component missing. Adding one automatically.");
            audioSource = gameObject.AddComponent<AudioSource>();
        }
    }

    void OnTriggerEnter(Collider other)
    {
        if (other.CompareTag("Player"))
        {
            if (!hasPlayedFirstLine && firstTimeVoiceLine != null)
            {
                audioSource.clip = firstTimeVoiceLine;
                audioSource.Play();
                hasPlayedFirstLine = true;
            }
            else if (otherVoiceLines.Length > 0)
            {
                int randomIndex = Random.Range(0, otherVoiceLines.Length);
                audioSource.clip = otherVoiceLines[randomIndex];
                audioSource.Play();
            }
        }
    }
}