using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class test : MonoBehaviour
{
    public GameObject bearIcon;
    public GameObject deerIcon;


    // Start is called before the first frame update
    void Start()
    {
        bearIcon.SetActive(true);
        deerIcon.SetActive(true);
    }
    
    public void Click()
    {
        Debug.Log("IsClicked");
    }
}
