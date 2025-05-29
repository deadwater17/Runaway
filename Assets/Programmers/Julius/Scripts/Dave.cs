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

    public AudioSource AudioSource;
    public AudioClip[] soldvoice;
    public AudioClip hey;
    public AudioClip questvl;

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
            AudioSource.PlayOneShot(questvl);

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
            int randomIndex = Random.Range(0, soldvoice.Length);
            AudioSource.clip = soldvoice[randomIndex];
            AudioSource.PlayOneShot(AudioSource.clip);
            Debug.Log("Sold");
            questUI.SetActive(false);
            notTalking();
        }
    }

    private void talkingtoDave()
    {
        if (questCompleted == false)
        {
            AudioSource.PlayOneShot(hey);
        }

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
        if (Input.GetKeyDown(KeyCode.Escape))
        {
            notTalking();
        }
    }
}
