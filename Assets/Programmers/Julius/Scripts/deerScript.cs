using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class deerScript : MonoBehaviour, IInteractable
{
    [HideInInspector]
    public float weight;
    void Start()
    {
        weight = Random.Range(160, 180);
    }
    public void Interact()
    {
        Debug.Log("Weight added to inventory " + weight + ".");
    }
}
