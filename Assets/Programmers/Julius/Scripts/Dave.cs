using System.Collections;
using System.Collections.Generic;
using TMPro;
using Unity.VisualScripting;
using UnityEngine;
using UnityEngine.UI;

public class Dave : MonoBehaviour, IInteractable
{
    [SerializeField] private CameraController m_camController;

    [SerializeField] private GameObject questUI;
    [SerializeField] GameObject questItem;

    [SerializeField] private TMP_Text moneyCount;

    private int money;

    public Button btnAccept;
    public Button btnSell;

    public MonoBehaviour playerController;
    //[SerializeField] GameObject questUI;

    public Seller seller;

    public bool isTalked;
    public bool questCollected;


    void Update()
    {
        money = int.Parse(moneyCount.text);
    }

    private void Start()
    {
        isTalked = false;
        questUI.SetActive(false);
        questCollected = false;
        //questUI.SetActive(false);
    }

    public void Interact()
    {
        talkingtoDave();    
    }

    public void acceptQuest()
    {
        if (isTalked && !questCollected) 
        {
            //questUI.SetActive(true);
            questItem.SetActive(true);
            Debug.Log("Accept quest");
            
            notTalking();
        }
        else if (isTalked && questCollected)
        {
            money += 100;
            moneyCount.text = money.ToString();
            Debug.Log("Quest is complete, 100 reward");
            notTalking();
        }
    }

    public void sellAnimals()
    {
        if (isTalked) 
        {
            seller.Sell();
            talkingtoDave();
            Debug.Log("Sold");
            questUI.SetActive(false);
            notTalking();
        }
    }

    private void talkingtoDave()
    {
        Cursor.lockState = CursorLockMode.None;
        Cursor.visible = true;
        playerController.enabled = false;
        isTalked = true;
        m_camController.enabled = false;
        questUI.SetActive(true);
    }

    private void notTalking()
    {
        Cursor.lockState = CursorLockMode.Locked;
        Cursor.visible = false;
        playerController.enabled = true;
        isTalked = false;
        m_camController.enabled = true;
        questUI.SetActive(false);
    }
}
