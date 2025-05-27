using System.Collections;
using System.Collections.Generic;
using Unity.VisualScripting;
using UnityEngine;
using UnityEngine.UI;

public class Dave : MonoBehaviour, IInteractable
{
    [SerializeField] private CameraController m_camController;

    public GameObject daveMenuUI;
    public GameObject questTracker;
    public GameObject questTick;
    public GameObject questItem;
    public bool isQuestActive;
    public bool hasQuestItem;
    public bool isQuestCompleted;
   

    public Button btnAccept;
    public Button btnSell;

    public MonoBehaviour playerController;
    //[SerializeField] GameObject questUI;

    public Seller seller;

    public bool isTalked;

    private void Start()
    {
        isTalked = false;
        daveMenuUI.SetActive(false);

        isQuestActive = false;
        hasQuestItem = false;
        isQuestCompleted = false;
        questTracker.SetActive(false);
        questItem.SetActive(false);
        questTick.SetActive(false);
    }

    public void Interact()
    {
        Cursor.lockState = CursorLockMode.None;
        Cursor.visible = true;
        m_camController.enabled = false;
        isTalked = true;
        playerController.enabled = false;
        daveMenuUI.SetActive(true);
        questTracker.SetActive(true);
    }

    public void acceptQuest()
    {
        if (isTalked == true) 
        {
            m_camController.enabled = true;       
            playerController.enabled = true;
            Debug.Log("Accept quest");
            daveMenuUI.SetActive(false);
            isQuestActive = true;
            questItem.SetActive(true);
            isTalked = false;

          
        }
    }


    void QuestActive()
    {
        if (hasQuestItem == true)
        {
            questTick.SetActive(true);
        }
    }

 

    public void sellAnimals()
    {
        if (isTalked) 
        {
            seller.Sell();
            m_camController.enabled = true;
            playerController.enabled = true;
            Debug.Log("Sold");
            daveMenuUI.SetActive(false);
            isTalked = false;
        }
    }
}
