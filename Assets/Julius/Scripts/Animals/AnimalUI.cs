using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class AnimalUI : MonoBehaviour
{
    [SerializeField] AnimalMovement animalMovement;
    [SerializeField] BearMovement bearMovement;
    [SerializeField] GameObject Interact_ObjectUI;
    public bool isLookedAt = false;

    void Start()
    {
        Interact_ObjectUI.SetActive(false);
    }

    void Update()
    {
        ActivateUI();
        SetLookedAt(isLookedAt);
    }

    void ActivateUI()
    {
        if (isLookedAt == true && !animalMovement.isAlive || isLookedAt == true && bearMovement.isDead)
        {
            Interact_ObjectUI.SetActive(true);
        }
        else
        {
            Interact_ObjectUI.SetActive(false);
        }
    }


    public void SetLookedAt(bool lookedAt)
    {
        isLookedAt = lookedAt;
    }
}
