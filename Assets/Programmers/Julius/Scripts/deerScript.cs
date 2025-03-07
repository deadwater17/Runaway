using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class deerScript : MonoBehaviour, IInteractable
{
    [HideInInspector]
    public float weight;
    public void Interact()
    {
        Debug.Log("Weight added to inventory " + Random.Range(160, 180) + ".");
    }
}
