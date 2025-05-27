using System.Collections;
using System.Collections.Generic;
using Unity.VisualScripting;
using UnityEngine;
using UnityEngine.UI;

public class Dave : MonoBehaviour, IInteractable
{
    [SerializeField] private CameraController m_camController;

    public Button btnAccept;
    public Button btnSell;

    [SerializeField] GameObject questUI;

    public Seller seller;

    private bool m_isTalked;

    private void Start()
    {
        m_isTalked = false;
        questUI.SetActive(false);
    }

    public void Interact()
    {
        Cursor.lockState = CursorLockMode.None;
        Cursor.visible = true;
        m_camController.enabled = false;
        m_isTalked = true;
    }

    public void acceptQuest()
    {
        if (m_isTalked) 
        {
            questUI.SetActive(true);
            m_camController.enabled = true;
            m_isTalked = false;
        }
    }

    public void sellAnimals()
    {
        if (m_isTalked) 
        {
            seller.Sell();
            m_camController.enabled = true;
            m_isTalked = false;
        }
    }
}
