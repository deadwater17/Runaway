using System.Collections;
using System.Collections.Generic;
using Unity.VisualScripting;
using TMPro;
using UnityEngine;

public class CheckTopWeight : MonoBehaviour
{
    [HideInInspector]
    public float TopWeight = 0; // The total weight of the inventory
    private rabbitScript rabbitScript;
    private deerScript deerScript;
    private bearScript bearScript;
    private float m_newWeight;

    private int m_rabbitCount;
    private int m_deerCount;  
    private int m_bearCount;

    
    public TextMeshProUGUI rabbittxt;
    public TextMeshProUGUI deertxt;
    public TextMeshProUGUI beartxt;
    private float m_RoldWeight;
    private float m_DoldWeight;
    private float m_BoldWeight;
    private float m_RnewWeight;
    private float m_DnewWeight;
    private float m_BnewWeight;

    void Start()
    {
        rabbitScript = FindObjectOfType<rabbitScript>();
        deerScript = FindObjectOfType<deerScript>();
        bearScript = FindObjectOfType<bearScript>();
    }

    public void UpdateWeight(string animalType, float weight)
    {
        switch (animalType)
        {
            case "Rabbit":
                m_RnewWeight = weight;
                if (m_RoldWeight < m_RnewWeight)
                {
                    m_RoldWeight = m_RnewWeight;
                }
                //rabbitScript.r_weight = m_RnewWeight;
                rabbittxt.text = Mathf.Round(m_RoldWeight).ToString();  
                break;
            case "Deer":
                m_DnewWeight = weight;
                if (m_DoldWeight < m_DnewWeight)
                {
                    m_DoldWeight = m_DnewWeight;
                }
               // deerScript.d_weight = m_DnewWeight;
                deertxt.text = Mathf.Round(m_DoldWeight).ToString();  
                break;
            case "Bear":
                m_BnewWeight = weight;
                if (m_BoldWeight < m_BnewWeight)
                {
                    m_BoldWeight = m_BnewWeight;
                }
               // bearScript.b_weight = m_BnewWeight;
                beartxt.text = Mathf.Round(m_BoldWeight).ToString();  
                break;
        }
    }
}
