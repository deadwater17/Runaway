using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class DaveVoices : MonoBehaviour
{
    public AudioClip firstTimeVoiceLine;      // Special voice line for the first time
    public AudioClip[] otherVoiceLines;       // Random voice lines for subsequent entries

    public GameObject dave1;
    public GameObject dave1second;
    public GameObject dave1third;
    public GameObject[] subtitles;

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
                dave1.SetActive(true);
                Invoke("Dave1", 2.5f);
                hasPlayedFirstLine = true;
            }
            else if (otherVoiceLines.Length > 0)
            {
                int randomIndex = Random.Range(0, otherVoiceLines.Length);
                audioSource.clip = otherVoiceLines[randomIndex];
                audioSource.Play();
                if (randomIndex == 0)
                {
                    subtitles[0].SetActive(true);
                    Invoke("Dave2", 3.0f);
                }
                else if (randomIndex == 1)
                {
                    subtitles[1].SetActive(true);
                    Invoke("Dave3", 5.0f);
                }
                else if (randomIndex == 2)
                {
                    subtitles[2].SetActive(true);
                    Invoke("Dave4", 3.0f);
                }
                else if (randomIndex == 3)
                {
                    subtitles[4].SetActive(true);
                    Invoke("Dave5", 4.0f);
                }
                else if (randomIndex == 4)
                {
                    subtitles[5].SetActive(true);
                    Invoke("Dave6", 3.0f);
                }
                else if (randomIndex == 5)
                {
                    subtitles[6].SetActive(true);
                    Invoke("Dave7", 1.9f);
                }
                else if (randomIndex == 6)
                {
                    subtitles[9].SetActive(true);
                    Invoke("Dave8", 4.2f);
                }
            }
        }
    }

    void Dave1()
    {
        dave1.SetActive(false);
        dave1second.SetActive(true);
        Invoke("Dave1second", 3.5f);
    }
    void Dave1second()
    {
        dave1second.SetActive(false);
        dave1third.SetActive(true);
        Invoke("Dave1third", 3.5f);
    }
    void Dave1third()
    {
        dave1third.SetActive(false);
    }


    void Dave2()
    {
        subtitles[0].SetActive(false);
    }
    void Dave3()
    {
        subtitles[1].SetActive(false);
    }
    void Dave4()
    {
        subtitles[2].SetActive(false);
        subtitles[3].SetActive(true);
        Invoke("Dave4second", 3.0f);
    }
    void Dave4second()
    {
        subtitles[3].SetActive(false);
    }
    void Dave5()
    {
        subtitles[4].SetActive(false);
    }
    void Dave6()
    {
        subtitles[5].SetActive(false);
    }
    void Dave7()
    {
        subtitles[6].SetActive(false);
        subtitles[7].SetActive(true);
        Invoke("Dave7second", 2.1f);
    }
    void Dave7second()
    {
        subtitles[7].SetActive(false);
        subtitles[8].SetActive(true);
        Invoke("Dave7third", 2.3f);
    }
    void Dave7third()
    {
        subtitles[8].SetActive(false);
    }
    void Dave8()
    {
        subtitles[9].SetActive(false);
    }
}