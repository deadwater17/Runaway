using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Notes : MonoBehaviour
{

    [SerializeField] Objective obj;

    [SerializeField] GameObject[] notesCanvas;
    

    void Start()
    {
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
                notesCanvas[0].SetActive(true);
                StartCoroutine(FadeInAndOut(notesCanvas[0])); // Fade duration is 6 seconds
                obj.notesHave += 1;
                Debug.Log("Note" + obj.notesHave);
                break;
            case 1:
                notesCanvas[1].SetActive(true);
                StartCoroutine(FadeInAndOut(notesCanvas[1]));
                obj.notesHave += 1;
                Debug.Log("Note" + obj.notesHave);
                break;
            case 2:
                notesCanvas[2].SetActive(true);
                StartCoroutine(FadeInAndOut(notesCanvas[2]));
                obj.notesHave += 1;
                Debug.Log("Note" + obj.notesHave);
                break;
            case 3:
                notesCanvas[3].SetActive(true);
                StartCoroutine(FadeInAndOut(notesCanvas[3]));
                obj.notesHave += 1;
                Debug.Log("Note" + obj.notesHave);
                break;
        }
    }

}
