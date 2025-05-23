using UnityEngine;

public class WeaponBob : MonoBehaviour
{
    [Header("Bob Settings")]
    public float bobAmount = 0.05f;
    public float bobFrequency = 8f;
    public float bobSmoothing = 5f;

    [Header("References")]
    public Transform cameraTransform;

    private weaponADS adsScript;
    private float timer;

    void Start()
    {
        if (cameraTransform == null)
            cameraTransform = Camera.main.transform;

        adsScript = GetComponentInParent<weaponADS>(); // robust for most setups
    }

    void Update()
    {
        if (adsScript != null && adsScript.isAiming)
            return;

        Vector3 input = new Vector3(Input.GetAxis("Horizontal"), 0, Input.GetAxis("Vertical"));

        if (input.magnitude > 0.1f)
        {
            timer += Time.deltaTime * bobFrequency;
            Vector3 bobOffset = new Vector3(
                Mathf.Cos(timer) * bobAmount,
                Mathf.Sin(timer * 2) * bobAmount,
                0
            );

            transform.localPosition += bobOffset * Time.deltaTime * bobSmoothing;
        }
    }
}
