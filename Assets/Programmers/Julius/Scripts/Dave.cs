using System.Collections;
using System.Collections.Generic;
using Unity.VisualScripting;
using UnityEngine;
using UnityEngine.UI;

public class Dave : MonoBehaviour, IInteractable
{
    [SerializeField] private CameraController m_camController;

    [SerializeField] private GameObject questUI;

    public GameObject QuestTracker;

    public Button btnAccept;
    public Button btnSell;

    public MonoBehaviour playerController;
    //[SerializeField] GameObject questUI;

    public Seller seller;

    public bool isTalked;

    private void Start()
    {
        isTalked = false;
        questUI.SetActive(false);
        //questUI.SetActive(false);
    }

    public void Interact()
    {
        Cursor.lockState = CursorLockMode.None;
        Cursor.visible = true;
        m_camController.enabled = false;
        isTalked = true;
        playerController.enabled = false;
        questUI.SetActive(true);
    }

    public void acceptQuest()
    {
        if (isTalked) 
        {
            //questUI.SetActive(true);
            m_camController.enabled = true;
            isTalked = false;
            playerController.enabled = true;
            Debug.Log("Accept quest");
            questUI.SetActive(false);
        }
    }

    public void sellAnimals()
    {
        if (isTalked) 
        {
            seller.Sell();
            m_camController.enabled = true;
            isTalked = false;
            playerController.enabled = true;
            Debug.Log("Sold");
            questUI.SetActive(false);
        }
    }
}
