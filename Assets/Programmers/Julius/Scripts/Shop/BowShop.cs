using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using TMPro;

public class BowShop : MonoBehaviour, IInteractable
{
    [SerializeField] private TMP_Text m_moneyCount;

    [SerializeField] private int m_cost = 300;
    private int m_money;



    public AudioSource AudioSource;
    public AudioClip voiceline;
    public AudioClip purchase;

    public GameObject subtitles;

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
            AudioSource.PlayOneShot(purchase);
            // subtracts the cost from the money
            m_money = m_money - m_cost;
            Debug.Log(m_money);
            m_moneyCount.text = m_money.ToString();
            // add upgrading function
            AudioSource.PlayOneShot(voiceline);
            subtitles.gameObject.SetActive(true);
            Invoke("Subtitles", 4.0f);
        }
        else
        {
            Debug.Log("You dont have enough money");
        }
    }



    void Subtitles()
    {
        subtitles.gameObject.SetActive(false);
    }
}
