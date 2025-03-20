using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ObjectUI : MonoBehaviour
{

    public GameObject Interact_ObjectUI;
    private Interaction m_interaction;

    void Start()
    {
        m_interaction = GetComponent<Interaction>();
        Interact_ObjectUI.SetActive(false);
    }
    
    void Update()
    {
        ActivateInteractionUI();
    }

    void ActivateInteractionUI()
    {
        if (m_interaction.LookedAt == true)
        {
            Interact_ObjectUI.SetActive(true);
        }
        else
        {
            Interact_ObjectUI.SetActive(false);
        }
    }
}
