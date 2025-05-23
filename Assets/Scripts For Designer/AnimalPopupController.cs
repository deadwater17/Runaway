using UnityEngine;
using System.Collections;

public class AnimalPopupController : MonoBehaviour
{
    public GameObject bearIcon;
    public GameObject deerIcon;

    private Animator bearAnim;
    private Animator deerAnim;
    private CanvasGroup pickupGroup;

    void Awake()
    {
        bearAnim = bearIcon.GetComponent<Animator>();
        deerAnim = deerIcon.GetComponent<Animator>();
        pickupGroup = GetComponent<CanvasGroup>();

        // Force icons to be ready
        bearIcon.SetActive(false);
        deerIcon.SetActive(false);
    }

    void Start()
    {
        StartCoroutine(HidePickupGroupNextFrame());
    }

    private IEnumerator HidePickupGroupNextFrame()
    {
        yield return null;
        pickupGroup.alpha = 0f;
        Debug.Log("Pickup UI group hidden after frame 1.");
    }

    public void Show(string animalType)
    {
        pickupGroup.alpha = 1f;

        // Hide both to start clean
        bearIcon.SetActive(false);
        deerIcon.SetActive(false);

        if (animalType == "Bear")
        {
            bearIcon.SetActive(true);
            bearAnim.Play("Idle", 0, 0);
            bearAnim.ResetTrigger("PickUp");
            bearAnim.SetTrigger("PickUp");
            CancelInvoke(nameof(HideBear));
            Invoke(nameof(HideBear), 2f);
        }
        else if (animalType == "Deer")
        {
            deerIcon.SetActive(true);
            deerAnim.Play("Idle", 0, 0);
            deerAnim.ResetTrigger("PickUp");
            deerAnim.SetTrigger("PickUp");
            CancelInvoke(nameof(HideDeer));
            Invoke(nameof(HideDeer), 2f);
        }
    }

    void HideBear()
    {
        bearIcon.SetActive(false);
        pickupGroup.alpha = 0f;
    }

    void HideDeer()
    {
        deerIcon.SetActive(false);
        pickupGroup.alpha = 0f;
    }
}
