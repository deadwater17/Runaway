using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using TMPro;

public class SpeedCheck : MonoBehaviour
{
    private Player m_movementScript;        // Reference to the Player script
    private float m_currentSpeed;           // Current speed of the player
    public TextMeshProUGUI speedText;               // Text object to display the speed
    private void Start()
    {
        m_movementScript = GetComponent<Player>();  // Get the Player script
    }

    private void Update()
    {
        m_currentSpeed = m_movementScript.currentSpeed;      // Get the current speed from the Player script

        speedText.text = "Speed: " + m_currentSpeed.ToString();  // Display the speed
    }
}
