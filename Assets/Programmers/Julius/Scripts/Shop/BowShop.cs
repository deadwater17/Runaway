using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using TMPro;

public class BowShop : MonoBehaviour, IInteractable
{
    [SerializeField] private TMP_Text m_moneyCount;

    [SerializeField] private int m_cost = 75;
    private int m_money;

    public AudioSource bowAudioSource;
    public AudioClip bowUpgradeAudioClip;
    public AudioClip purchaseClip;
    public GameObject bowSubs;

    void Update()
    {
        m_money = int.Parse(m_moneyCount.text);     // gets the amount of money player has through the text
        //Debug.Log(money);
    }

    public void Interact()
    {
        Debug.Log("Trying to sell");
        if (m_money >= m_cost)
        {
            bowAudioSource.PlayOneShot(purchaseClip);
            // subtracts the cost from the money
            m_money = m_money - m_cost;
            Debug.Log(m_money);
            m_moneyCount.text = m_money.ToString();
            // add upgrading function


            bowAudioSource.PlayOneShot(bowUpgradeAudioClip);
            bowSubs.SetActive(true);
            Invoke("SetFalse", 4.0f);
        }
        else
        {
            Debug.Log("You dont have enough money");
        }
    }



    void SetFalse()
    {
        bowSubs.SetActive(false);
    }
}
