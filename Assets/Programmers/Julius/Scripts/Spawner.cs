using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class NumGenTest : MonoBehaviour, IInteractable
{
    public void Interact()
    {
        Debug.Log("Weight added to inventory " + Random.Range(160, 180) + ".");
    }
}
