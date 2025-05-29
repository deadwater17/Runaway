using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Video;

public class SplashManager : MonoBehaviour
{
    [Header("Splash Screen Settings")]
    public GameObject splashPanel;               // Panel that holds the splash video
    public Animator splashAnimator;              // Optional: Animator to show fade in/out
    public float idleTime = 15f;                 // Time before showing splash
    private float timer = 0f;

    private VideoPlayer videoPlayer;
    private bool splashPlaying = false;

    void Start()
    {
        timer = 0f;

        if (splashPanel != null)
        {
            splashPanel.SetActive(false);
            videoPlayer = splashPanel.GetComponent<VideoPlayer>();

            if (videoPlayer != null)
            {
                videoPlayer.Stop();
                videoPlayer.playOnAwake = false;
            }
        }
    }

    void Update()
    {
        // Detect mouse movement or key press
        if (Input.anyKey || Input.GetAxis("Mouse X") != 0 || Input.GetAxis("Mouse Y") != 0)
        {
            ResetInactivity();
        }
        else
        {
            timer += Time.deltaTime;
        }

        // Trigger splash after idle time
        if (timer >= idleTime && !splashPlaying)
        {
            ShowSplash();
        }
    }

    void ShowSplash()
    {
        splashPlaying = true;
        splashPanel.SetActive(true);

        if (splashAnimator != null)
        {
            splashAnimator.SetTrigger("ShowSplash");
        }

        if (videoPlayer != null)
        {
            videoPlayer.Play();
        }
    }

    void ResetInactivity()
    {
        timer = 0f;

        if (splashPlaying)
        {
            splashPlaying = false;

            if (videoPlayer != null && videoPlayer.isPlaying)
            {
                videoPlayer.Stop();
            }

            if (splashPanel != null)
            {
                splashPanel.SetActive(false);
            }
        }
    }
}
