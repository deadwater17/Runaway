using UnityEngine;

public class BedInteraction : MonoBehaviour, IInteractable
{
    private DateController dateController;

    private void Start()
    {
        dateController = FindObjectOfType<DateController>();
    }

    public void Interact()
    {
        if (dateController != null)
        {
            dateController.AdvanceToMorning();
        }
    }
}
