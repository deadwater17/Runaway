using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using System;
using TMPro;
using UnityEngine;
using System.Runtime.InteropServices.WindowsRuntime;

public class TimeController: MonoBehaviour
{
    [SerializeField]
    float timeForGame;

    [SerializeField]
    float startHour;

    [SerializeField]
    TextMeshProUGUI timeText;

    [SerializeField]
    Light sunlight;

    [SerializeField]
    Light moonlight;

    [SerializeField]
    float sunriseHour;

    [SerializeField]
    float sunsetHour;

    TimeSpan sunriseTime;
    TimeSpan sunsetTime;
    public DateTime currentTime;
    public Animator fadeAnimator;
    public bool isDayTime;
    void Start()
    {
        currentTime = DateTime.Now.Date + TimeSpan.FromHours(startHour);
        sunriseTime = TimeSpan.FromHours(sunriseHour);
        sunsetTime = TimeSpan.FromHours(sunsetHour);
        timeForGame = 86400 / timeForGame;
    }

    // Update is called once per frame
    void Update()
    {
        updateTimeOfDay();
        RotateSun();
    }
    private void updateTimeOfDay()
    {
        
        currentTime = currentTime.AddSeconds(Time.deltaTime * timeForGame);
        if (timeText != null)
        {
            timeText.text = currentTime.ToString("HH:mm");
        }
    }

    void RotateSun()
    {
        float sunLightRotation;
        float moonLightRotation;
        if(currentTime.TimeOfDay>sunriseTime && currentTime.TimeOfDay < sunsetTime) //day mode
        {
            TimeSpan DayDuration = CalculateTimeDifference(sunriseTime, sunsetTime); //total time of the day
            TimeSpan timeSinceSunrise = CalculateTimeDifference(sunriseTime, currentTime.TimeOfDay);

            double percentage = timeSinceSunrise.TotalMinutes / DayDuration.TotalMinutes;
            sunLightRotation = Mathf.Lerp(0, 180, (float)percentage);
            moonLightRotation  = Mathf.Lerp(180, 360, (float)percentage);
            sunlight.gameObject.SetActive(true);
            moonlight.gameObject.SetActive(false);
            isDayTime = true;
        }
        else //night mode
        {
            TimeSpan NightDuration = CalculateTimeDifference(sunsetTime, sunriseTime); //total time of the night
            TimeSpan timeSinceSunset = CalculateTimeDifference(sunsetTime, currentTime.TimeOfDay);

            double percentage = timeSinceSunset.TotalMinutes / NightDuration.TotalMinutes;
            sunLightRotation = Mathf.Lerp(180, 360, (float)percentage);
            moonLightRotation = Mathf.Lerp(0, 180, (float)percentage);
            sunlight.gameObject.SetActive(false);
            moonlight.gameObject.SetActive(true);
            isDayTime = false;
        }

        sunlight.transform.rotation = Quaternion.AngleAxis(sunLightRotation, Vector3.right);
        moonlight.transform.rotation = Quaternion.AngleAxis(moonLightRotation, Vector3.right);
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

    public void sleepUntil(float wakeUpHour)
    {
        StartCoroutine(SleepWithFade(wakeUpHour));
               Debug.Log(currentTime);

    }

    IEnumerator SleepWithFade(float wakeUpHour)
    {
        fadeAnimator.Play("fade out");
        yield return new WaitForSeconds(4f);
        // Get current time in hours
        float currentHour = (float)currentTime.TimeOfDay.TotalHours;

        // Calculate hours to skip
        float hoursToSkip;
        if (wakeUpHour > currentHour)
        {
            hoursToSkip = wakeUpHour - currentHour;
        }
        else
        {
            hoursToSkip = (24f - currentHour) + wakeUpHour;
        }
        
        // Advance the currentTime by the hours to skip
        currentTime = currentTime.AddHours(hoursToSkip);

        fadeAnimator.Play("fade in");
    }
}
