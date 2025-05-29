using UnityEngine;
using UnityEngine.Audio;
using UnityEngine.UI;

public class AudioSettings : MonoBehaviour
{
    public AudioMixer mixer;
    public Slider volumeSlider;

    private void Start()
    {
        // Set slider to current volume level
        float currentVolume;
        mixer.GetFloat("MasterVolume", out currentVolume);
        volumeSlider.value = currentVolume;

        // Add listener
        volumeSlider.onValueChanged.AddListener(SetVolume);
    }

    public void SetVolume(float value)
    {
        // Convert linear 0–1 to dB (log scale)
        float dB = Mathf.Log10(value) * 20;
        mixer.SetFloat("MasterVolume", dB);
    }
}
