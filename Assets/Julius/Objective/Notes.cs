using System.Collections;
using System.Collections.Generic;
using Unity.VisualScripting;
using UnityEngine;

public class Notes : MonoBehaviour
{
    private bool m_gotPageOne;
    [SerializeField] Objective obj;

    [SerializeField] GameObject[] notesCanvas;
    

    void Start()
    {
        m_gotPageOne = false;
        for (int i = 0; i < notesCanvas.Length; i++)
        {
            notesCanvas[i].SetActive(false);
        }  
    }

    private IEnumerator FadeInAndOut(GameObject canvas)
    {
        {
            CanvasGroup canvasGroup = canvas.GetComponent<CanvasGroup>();
            if (canvasGroup == null)
            {
                canvasGroup = canvas.AddComponent<CanvasGroup>();
            }

            canvasGroup.alpha = 0f;
            canvas.SetActive(true);

            // Fade In (1 second)
            float fadeTime = 1f;
            float elapsedTime = 0f;
            while (elapsedTime < fadeTime)
            {
                canvasGroup.alpha = Mathf.Lerp(0f, 1f, elapsedTime / fadeTime);
                elapsedTime += Time.deltaTime;
                yield return null;
            }
            canvasGroup.alpha = 1f;

            // Wait for player to press Esc key to fade out
            while (!Input.GetKeyDown(KeyCode.Escape))
            {
                yield return null;
            }

            // Fade Out (1 second)
            elapsedTime = 0f;
            while (elapsedTime < fadeTime)
            {
                canvasGroup.alpha = Mathf.Lerp(1f, 0f, elapsedTime / fadeTime);
                elapsedTime += Time.deltaTime;
                yield return null;
            }
            canvasGroup.alpha = 0f;

            // Deactivate the canvas
            canvas.SetActive(false);
        }
    }

    public void NoteCanvasDisplay()
    {
        switch (obj.notesHave)
        {
            case 0:
                NotePageOne();
                obj.notesHave += 1;

                break;
            case 1:
                NotePageTwo();
                obj.notesHave += 1;
                break;
            case 2:
                NotePageThree();
                obj.notesHave += 1;
                break;
            case 3:
                NotePageFour();
                obj.notesHave += 1;
                break;

        }
    }

    void NotePageOne()
    {
        notesCanvas[0].SetActive(true);
        StartCoroutine(FadeInAndOut(notesCanvas[0]));
        Debug.Log("Note " + obj.notesHave);
    }

    void NotePageTwo()
    {
        notesCanvas[1].SetActive(true);
        StartCoroutine(FadeInAndOut(notesCanvas[1]));
        Debug.Log("Note " + obj.notesHave);
    }
    void NotePageThree()
    {
        notesCanvas[2].SetActive(true);
        StartCoroutine(FadeInAndOut(notesCanvas[2]));
        Debug.Log("Note " + obj.notesHave);
    }
    void NotePageFour()
    {
       notesCanvas[3].SetActive(true);
       StartCoroutine(FadeInAndOut(notesCanvas[3]));
       Debug.Log("Note " + obj.notesHave);
    }

    public void display1()
    {
        if (obj.notesHave <= 1) { NotePageOne(); }
    }
    public void display2()
    {
        if (obj.notesHave <= 2) { NotePageTwo(); }
    }
    public void display3()
    {
        if (obj.notesHave <= 3) { NotePageThree(); }
    }
    public void display4()
    {
        if (obj.notesHave <= 4) { NotePageFour(); }
    }

}

