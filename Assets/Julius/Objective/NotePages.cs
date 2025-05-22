using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class NotePages : MonoBehaviour, IInteractable
{
    [SerializeField] Notes notes;


    public void Interact()
    {
        notes.NoteCanvasDisplay();
        Debug.Log("Interacted with Notes");
    }
}
