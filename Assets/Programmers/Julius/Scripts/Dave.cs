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

    public GameObject questLocUI;
    public GameObject questObjectiveUI; // <-- UI that shows the Quest
    public GameObject tickUI;           // <-- UI that shows the Tick

    private int money;

    public Button btnAccept;
    public Button btnSell;

    public MonoBehaviour playerController;
    public Seller seller;

    public bool isTalked;
    public bool questCollected;
    [SerializeField]private bool questCompleted;

    void Update()
    {
        money = int.Parse(moneyCount.text);

        goodbyeDave();  // will stop talking to dave if press esc
    }

    private void Start()
    {
        isTalked = false;
        questUI.SetActive(false);
        questCollected = false;
        questCompleted = false;

        if (questObjectiveUI != null)
            questObjectiveUI.SetActive(false);

        if (tickUI != null)
            tickUI.SetActive(false);
    }

    public void Interact()
    {
        talkingtoDave();
    }

    public void acceptQuest()
    {
        if (isTalked && !questCollected)
        {
            questItem.SetActive(true);
            Debug.Log("Accept quest");

            if (questLocUI != null)
                questLocUI.SetActive(true);

            if (questObjectiveUI != null)
                questObjectiveUI.SetActive(true); // Turn on Quest UI

            notTalking();
        }
        else if (isTalked && questCollected && !questCompleted)
        {
            money += 100;
            moneyCount.text = money.ToString();
            Debug.Log("Quest is complete, 100 reward");

            // Hide both Quest and Tick UI now
            if (questObjectiveUI != null)
                questObjectiveUI.SetActive(false);

            if (tickUI != null)
                tickUI.SetActive(false);

            questCompleted = true;

            notTalking();
        }
    }

    public void sellAnimals()
    {
        Debug.Log("trying to sell");
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

    private void goodbyeDave()
    {
        while (!Input.GetKeyDown(KeyCode.Escape))
        {
            yield return null;
        }

        notTalking();
    }
}
