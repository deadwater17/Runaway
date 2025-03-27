using UnityEngine;
using UnityEngine.UI;

public class ButtonAlphaWobble : MonoBehaviour
{
    public Image buttonImage; // Assign the button's Image component

    private float speedMultiplier = 2f; // Same speed as title wobble
    private float minAlpha = 80f / 255f; // Convert to 0-1 range
    private float maxAlpha = 150f / 255f;

    private void Update()
    {
        if (buttonImage == null) return;

        float time = Time.time * speedMultiplier;
        float alpha = Mathf.Lerp(minAlpha, maxAlpha, (Mathf.Sin(time) + 1) / 2); // Smooth transition

        Color newColor = buttonImage.color;
        newColor.a = alpha;
        buttonImage.color = newColor;
    }
}
