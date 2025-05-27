using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Quest : MonoBehaviour, IInteractable
{
    public GameObject quest;
    public GameObject questLocUI;
    public GameObject tickUI; // <-- NEW: Tick object to turn on

    public Dave dave;

    void Start()
    {
        quest.SetActive(false);

        if (tickUI != null)
            tickUI.SetActive(false); // Optional: start hidden
    }

    public void Interact()
    {
        dave.questCollected = true;

        if (questLocUI != null)
            questLocUI.SetActive(false);

        if (tickUI != null)
            tickUI.SetActive(true); // <-- Show tick

        Destroy(quest);
    }
}
