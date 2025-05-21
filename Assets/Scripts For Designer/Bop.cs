using UnityEngine;

public class Bop : MonoBehaviour
{
    public float amplitude = 0.1f;     // Vertical bounce
    public float frequency = 1f;       // Bounce speed
    public float swayAmount = 5f;      // Left-right tilt (around Z)
    public float swaySpeed = 1.5f;
    public float tiltAmount = 2f;      // Forward-back tilt (around X)
    public float tiltSpeed = 0.8f;

    private Vector3 startPos;
    private Quaternion startRot;

    void Start()
    {
        startPos = transform.localPosition;
        startRot = transform.localRotation;
    }

    void Update()
    {
        float bounce = Mathf.Sin(Time.time * frequency) * amplitude;
        float swayZ = Mathf.Sin(Time.time * swaySpeed) * swayAmount;
        float tiltX = Mathf.Sin(Time.time * tiltSpeed) * tiltAmount;

        transform.localPosition = startPos + new Vector3(0, bounce, 0);

        Quaternion swayRotation = Quaternion.Euler(tiltX, 0f, swayZ);
        transform.localRotation = startRot * swayRotation;
    }
}
