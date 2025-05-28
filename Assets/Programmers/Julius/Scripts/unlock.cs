using System.Collections;
using System.Collections.Generic;
using TMPro;
using UnityEngine;

public class unlock : MonoBehaviour, IInteractable
{
    [SerializeField] GameObject mineBlocker;    // meant to be the gameObject that blocks the path

    [SerializeField] TMP_Text moneyCount;   // gets money
    private int m_money;


    private void Update()
    {
        m_money = int.Parse(moneyCount.text);
    }

    public void Interact()
    {
        if (m_money < 2000)     // cost 2000
        {
            m_money = m_money - 2000; // descrease cost from bank
        } 

        moneyCount.text = m_money.ToString(); // updates the money

        Destroy(mineBlocker);   // destroys the blockers
        Destroy(this);  // destroys the interaction cube
    }
}
