using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class MMMusic : MonoBehaviour
{
    public static MMMusic instance;

    void Awake()
    {
        if (instance != null)
            Destroy(gameObject);
        else
        {
            instance = this;
            DontDestroyOnLoad(this.gameObject);
        }
    }

    private void Update()
    {
        if (SceneManager.GetActiveScene().name == "IntroCutscene")
            MMMusic.instance.GetComponent<AudioSource>().Pause();
        //BGmusic.instance.GetComponent<AudioSource>().Play();
    }


    public float fadeTime = 0.5f; // Time in seconds for the fade out
    private AudioSource musicSource; // Reference to the AudioSource

    void Start()
    {
        musicSource = GetComponent<AudioSource>(); // Get the AudioSource component
    }

    public void StartMusicFade() // Function to be called when the button is pressed
    {
        StartCoroutine(FadeOutMusic()); // Start the coroutine to fade out the music
    }

    IEnumerator FadeOutMusic()
    {
        float startVolume = musicSource.volume; // Store the initial volume
        float elapsedTime = 0f; // Time elapsed during the fade

        while (musicSource.volume > 0) // Loop until the volume reaches zero
        {
            elapsedTime += Time.deltaTime; // Update the elapsed time
            musicSource.volume = Mathf.Lerp(startVolume, 0, elapsedTime / fadeTime); // Lerp the volume to zero
            yield return null; // Wait for the next frame
        }

        musicSource.Stop(); // Stop the music when the volume is zero
        musicSource.volume = startVolume; // Reset the volume to the initial value
    }
}
