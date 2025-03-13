using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CameraShake : MonoBehaviour
{
    public float shakeTime = 0.02f;
    public float maxRotate = 1f;
    public float minRotate = -1f;
    public float zoomFov;
    public IEnumerator shake()
    {
        float oFov = GetComponent<Camera>().fieldOfView;
        zoomFov = GetComponent<Camera>().fieldOfView/12;
        Quaternion rotation = transform.localRotation;
        float t = 0f;

        while (t < shakeTime)
        {
            float zRotation = Random.Range(minRotate, maxRotate);
            //GetComponent<Camera>().fieldOfView = Mathf.Lerp(oFov, oFov - zoomFov, t/shakeTime);
            transform.localRotation = rotation * Quaternion.Euler(rotation.x, rotation.y, zRotation);
            t += Time.deltaTime;
            yield return null;
        }

        //t = 0f;
        //while (t < shakeTime)
        //{
        //    GetComponent<Camera>().fieldOfView = Mathf.Lerp(oFov - zoomFov, oFov, t/shakeTime);
        //    t += Time.deltaTime;
        //    yield return null;
        //}

        //transform.localRotation = rotation;
    }
}
