using System.Collections;
using System.Collections.Generic;
using TMPro;
using UnityEngine;

public class Seller : MonoBehaviour, IInteractable
{
    [SerializeField] private TMP_Text rabNum;
    [SerializeField] private int rabPrice;
    [SerializeField] private TMP_Text deerNum;
    [SerializeField] private int deerPrice;
    private TMP_Text bearNum;
    private int bearPrice;

    public void Interact()
    {

    }

}
