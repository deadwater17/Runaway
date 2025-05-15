using System;
using System.Collections;
using System.Collections.Generic;
using UnityEditor.Rendering.LookDev;
using UnityEngine;

public class DayNightShift : MonoBehaviour
{
    public Material[] skyMaterials;
    public float fullDayDuration;
    public float transitionDuration;

    int currentIndex = 0;
    TimeController timeController;

    void Start()
    {
        timeController = FindObjectOfType<TimeController>();
    }
    void Update()
    {
        float progress = (float)timeController.currentTime.TimeOfDay.TotalHours/24f;
        Debug.Log(progress);
        int newIndex = (int)(progress * skyMaterials.Length);
        transform.rotation = Quaternion.Lerp(Quaternion.Euler(0,0,0),Quaternion.Euler(360,0,0),progress);
        if(newIndex!=currentIndex)
        {
            StartCoroutine(TransitionMat(newIndex));
            currentIndex = newIndex;
        }
    }

    IEnumerator TransitionMat(int index)
    {
        Material startMat = RenderSettings.skybox;
        Material endMat = skyMaterials[index];
        Material temp = new Material(startMat);
        float elapsed = 0f;
        while(elapsed < transitionDuration)
        {
            elapsed += Time.deltaTime;
            float t = elapsed / transitionDuration;
            TransitionSkyProperties(startMat, endMat, temp, t);
            RenderSettings.skybox = temp;
            DynamicGI.UpdateEnvironment();
            yield return null;
        }
        //RenderSettings.skybox = endMat;
    }


    void TransitionSkyProperties(Material start, Material end, Material target, float t)
    {
        string[] colorProps = new string[] {
        "_SunDiscColor",
        "_SunHaloColor",
        "_HorizonLineColor",
        "_SkyGradientTop",
        "_SkyGradientBottom"};

        foreach (string prop in colorProps)
        {
            if (start.HasProperty(prop) && end.HasProperty(prop))
            {
                target.SetColor(prop, Color.Lerp(
                    start.GetColor(prop),
                    end.GetColor(prop),
                    t
                ));
            }
        }


        string[] floatProp = new string[] {
            "_SunDiscMultiplier",
            "_SunDiscExponent",
            "_SunHaloExponent",
            "_SunHaloContribution",
            "_HorizonLineExponent",
            "_HorizonLineContribution",
            "_SkyGradientExponent",

        };

        foreach (string prop in floatProp)
        {
            if (start.HasProperty(prop) && end.HasProperty(prop))
            {
                target.SetFloat(prop, Mathf.Lerp(
                    start.GetFloat(prop),
                    end.GetFloat(prop),
                    t
                ));
            }
        }
    }
}
