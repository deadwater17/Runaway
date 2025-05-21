using UnityEngine;

public class BedUI : MonoBehaviour
{
    public GameObject interactPrompt; // Assign your E prompt (UI canvas or world space image)

    public void SetLookedAt(bool isLooking)
    {
        if (interactPrompt != null)
        {
            interactPrompt.SetActive(isLooking);
        }
    }
}
