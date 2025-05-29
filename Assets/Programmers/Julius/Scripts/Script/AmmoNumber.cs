using System.Collections;
using System.Collections.Generic;
using TMPro;
using Unity.VisualScripting;
using UnityEngine;

public class AmmoNumber : MonoBehaviour
{
    public static int bulletNum = 20;
    public static int arrowNum = 100;

    public GameObject gun;
    public GameObject gun2;
    public GameObject bow;
    public TextMeshProUGUI text;
    void Start()
    {
        text = GetComponent<TextMeshProUGUI>();
    }

    // Update is called once per frame
    void Update()
    {
        if(gun.activeSelf || gun2.activeSelf)
        {
            text.text = bulletNum.ToString();
        }
        else if(bow.activeSelf)
        {
            text.text = "";
                /*arrowNum.ToString()*/
        }
        if(arrowNum<=0)
        {
            arrowNum = 100;
        }
    }
}
