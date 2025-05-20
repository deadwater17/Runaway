using UnityEngine;
using UnityEngine.UI;
using System.Collections;

public class SoundStateController : MonoBehaviour
{
    public Image soundIcon;
    public Color crouchOrIdleColor = Color.green;
    public Color walkOrRunColor = Color.yellow;
    public Color bowColor = new Color(1f, 0.5f, 0f);
    public Color gunColor = Color.red;

    private Coroutine currentFlash;
    private Coroutine colorLerpRoutine;

    public void TriggerGunState()
    {
        if (currentFlash != null) StopCoroutine(currentFlash);
        currentFlash = StartCoroutine(FlashColor(gunColor));
    }

    public void TriggerBowState()
    {
        if (currentFlash != null) StopCoroutine(currentFlash);
        currentFlash = StartCoroutine(FlashColor(bowColor));
    }

    IEnumerator FlashColor(Color color)
    {
        // Immediately start lerping to the flash color
        StartLerpToColor(color);
        yield return new WaitForSeconds(1f);
        currentFlash = null;
    }

    public void SetColor(Color color)
    {
        if (currentFlash == null)
        {
            StartLerpToColor(color);
        }
    }

    void StartLerpToColor(Color targetColor)
    {
        if (colorLerpRoutine != null) StopCoroutine(colorLerpRoutine);
        colorLerpRoutine = StartCoroutine(LerpColorRoutine(targetColor));
    }

    IEnumerator LerpColorRoutine(Color targetColor)
    {
        Color startColor = soundIcon.color;
        float duration = 0.25f;
        float t = 0f;

        while (t < 1f)
        {
            t += Time.deltaTime / duration;
            soundIcon.color = Color.Lerp(startColor, targetColor, t);
            yield return null;
        }

        soundIcon.color = targetColor;
    }
}
