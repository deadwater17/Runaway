using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class DaveVoices : MonoBehaviour
{
    public AudioSource audioSource;
    public AudioClip[] voicelines;

    public Animator animator;


    // Start is called before the first frame update
    void Start()
    {
        
    }

    // Update is called once per frame
    void Update()
    {
        
    }

    private void OnTriggerEnter(Collider other)
    {
      
        AudioClip[] clips = voicelines;

        if (clips.Length == 0)
        {
            Debug.LogWarning("No audio clips set.");
            return;
        }
        else 
        {
            animator.SetTrigger("New Trigger")
            Debug.Log("Voiceline plays");
        AudioClip selectedClip = clips[Random.Range(0, clips.Length)];
        audioSource.clip = selectedClip;
        audioSource.volume = 1f;
        audioSource.PlayOneShot(audioSource.clip);
        }
        
        
    }

}
