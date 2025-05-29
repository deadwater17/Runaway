using System.Collections;
using System.Collections.Generic;
using UnityEngine;


public class NotePages : MonoBehaviour, IInteractable
{
    [SerializeField] Notes notes;
    [SerializeField] private GameObject m_notes;

    public AudioSource audioSource;
    public AudioClip clip;

    public void Interact()
    {
        notes.NoteCanvasDisplay();
        Debug.Log("Interacted with Notes");
        audioSource.PlayOneShot(clip);
        Destroy(m_notes);
    }
}
