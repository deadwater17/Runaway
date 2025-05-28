using UnityEngine;
using UnityEngine.UI;
using System.Collections;

public class DateController : MonoBehaviour
{
    public float fadeDuration = 4f;

    public Transform playerObj; // Assign PlayerObj
    public Vector3 playerResetPosition = new Vector3(218.586548f, 23.7399979f, 381.999298f);
    public Vector3 playerResetRotation = new Vector3(0f, 102.03f, 0f);

    public int currentDay = 1;

    private TimeController timeController;

    private void Start()
    {
        timeController = FindObjectOfType<TimeController>();
    }

    public void AdvanceToMorning()
    {
        if (timeController != null)
        {
            timeController.sleepUntil(7.01f); // 7 AM
        }

        // 3. Reset player position and rotation
        if (playerObj != null)
        {
            playerObj.position = playerResetPosition;
            playerObj.eulerAngles = playerResetRotation;
        }

        // 4. Advance the day
        currentDay++;

    }
}
