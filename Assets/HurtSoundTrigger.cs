using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class HurtSoundTrigger : MonoBehaviour
{
    public AudioClip[] hurtSounds;               // Hurt sounds to play when hit by a bullet
    public GameObject[] bulletPrefabs;           // Drag and drop bullet prefabs here

    private AudioSource audioSource;

    void Start()
    {
        audioSource = GetComponent<AudioSource>();
        if (audioSource == null)
        {
            Debug.LogWarning("AudioSource component missing. Adding one automatically.");
            audioSource = gameObject.AddComponent<AudioSource>();
        }
    }

    void OnCollisionEnter(Collision collision)
    {
        GameObject other = collision.gameObject;

        foreach (GameObject bullet in bulletPrefabs)
        {
            // Compare by prefab name or using prefab references
            if (other.name.Contains(bullet.name)) // Use Contains() in case Unity adds "(Clone)"
            {
                PlayHurtSound();
                break;
            }
        }
    }

    private void PlayHurtSound()
    {
        if (hurtSounds.Length > 0)
        {
            int randomIndex = Random.Range(0, hurtSounds.Length);
            audioSource.PlayOneShot(hurtSounds[randomIndex]);
        }
    }
}
