using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Quest : MonoBehaviour, IInteractable
{
    public GameObject quest;

    public Dave dave;

    // Start is called before the first frame update
    void Start()
    {
        quest.SetActive(false);
    }
 
    public void Interact()
    {
        dave.questCollected = true;
        Destroy(quest);
    }
}
