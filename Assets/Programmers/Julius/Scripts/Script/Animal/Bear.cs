using System.Collections;
using System.Collections.Generic;
using Unity.VisualScripting;
using UnityEngine;

public class Bear : MonoBehaviour
{
    [SerializeField]int m_health = 100;
    [SerializeField]int bullet_dmg = 100;

    [SerializeField] GameObject col;

    void OnCollisionEnter(Collision col)
    {
        if(col.gameObject.name == "bullet")
        {
            m_health = m_health - bullet_dmg;
            CheckHP();
        }
    }

    void CheckHP()
    {
        if (m_health == 0)    
        {
            Destroy(this);
        }   
    }
}
