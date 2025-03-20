using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ObjectUI : MonoBehaviour
{

    public GameObject Interact_ObjectUI;
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
        if (isLookedAt == true)
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
