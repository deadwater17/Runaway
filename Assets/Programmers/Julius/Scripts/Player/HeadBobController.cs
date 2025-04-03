using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class HeadBobController : MonoBehaviour
{
    [Header("Headbob Controller")]
    [Range(0.001f,0.01f)]
    public float amount;

    [Range(1f,30f)]
    public float frequency;

    [Range(10f,100f)]
    public float smoothness;

    Vector3 StartPos;

    private void Start()
    {
        StartPos = transform.localPosition;
    }

    private void Update()
    {
        HeadbobTrigger();
        StopHeadBob();
    }

    private void HeadbobTrigger()
    {
        float inputMagnitude = new Vector3(Input.GetAxis("Horizontal"),0, Input.GetAxis("Vertical")).magnitude;

        if (inputMagnitude > 0)
        {
            StartHeadbob();
        }
    }

    private Vector3 StartHeadbob()
    {
        Vector3 pos = Vector3.zero;
        pos.y += Mathf.Lerp(pos.y, Mathf.Sin(Time.time * frequency) * amount * 1.4f, smoothness * Time.deltaTime);
        pos.x += Mathf.Lerp(pos.x, Mathf.Cos(Time.time * frequency/2f) * amount * 1.6f, smoothness * Time.deltaTime);
        transform.localPosition += pos;

        return pos;
    }

    private void StopHeadBob()
    {
        if (transform.localPosition == StartPos) return;
        transform.localPosition = Vector3.Lerp(transform.localPosition, StartPos, 1 * Time.deltaTime);
    }
}
