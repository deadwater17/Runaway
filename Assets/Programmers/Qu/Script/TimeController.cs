using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using System;
using TMPro;
using UnityEngine;

public class TimeController: MonoBehaviour
{
    [SerializeField]
    float timeMultiplier;

    [SerializeField]
    float startHour;

    [SerializeField]
    TextMeshProUGUI timeText;

    [SerializeField]
    Light sunlight;

    [SerializeField]
    float sunriseHour;

    [SerializeField]
    float sunsetHour;

    TimeSpan sunriseTime;
    TimeSpan sunsetTime;
    DateTime currentTime;
    void Start()
    {
        currentTime = DateTime.Now.Date + TimeSpan.FromHours(startHour);
        sunriseTime = TimeSpan.FromHours(sunriseHour);
        sunsetTime = TimeSpan.FromHours(sunsetHour);
    }

    // Update is called once per frame
    void Update()
    {
        updateTimeOfDay();
        RotateSun();
    }
    private void updateTimeOfDay()
    {
        currentTime = currentTime.AddSeconds(Time.deltaTime * timeMultiplier);
        if (timeText != null)
        {
            timeText.text = currentTime.ToString("HH:mm");
        }
    }

    void RotateSun()
    {
        float sunLightRotation;
        if(currentTime.TimeOfDay>sunriseTime && currentTime.TimeOfDay < sunsetTime)
        {
            TimeSpan sunriseTosunsetDuration = CalculateTimeDifference(sunriseTime, sunsetTime);
            TimeSpan timeSinceSunrise = CalculateTimeDifference(sunriseTime, currentTime.TimeOfDay);

            double percentage = timeSinceSunrise.TotalMinutes / sunriseTosunsetDuration.TotalMinutes;
            sunLightRotation = Mathf.Lerp(0, 180, (float)percentage);
        }
        else
        {
            TimeSpan sunriseTosunsetDuration = CalculateTimeDifference(sunsetTime, sunriseTime);
            TimeSpan timeSinceSunset = CalculateTimeDifference(sunsetTime, currentTime.TimeOfDay);

            double percentage = timeSinceSunset.TotalMinutes / sunriseTosunsetDuration.TotalMinutes;
            sunLightRotation = Mathf.Lerp(180, 360, (float)percentage);
        }

        sunlight.transform.rotation = Quaternion.AngleAxis(sunLightRotation, Vector3.right);
    }

    TimeSpan CalculateTimeDifference(TimeSpan fromTime,TimeSpan toTime)
    {
        TimeSpan difference = toTime - fromTime;
        if(difference.TotalSeconds < 0)
        {
            difference += TimeSpan.FromHours(24);
        }

        return difference;
    }
}
