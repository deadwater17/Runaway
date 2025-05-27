using UnityEngine;

public class AnimalPopupController : MonoBehaviour
{
    public GameObject bearParent;
    public GameObject deerParent;

    public Animator bearAnim;
    public Animator deerAnim;

    public void Start()
    {
        // Make sure parents are hidden initially
        bearParent.SetActive(false);
        deerParent.SetActive(false);

        // Cache animator components from parents
        bearAnim = bearParent.GetComponent<Animator>();
        deerAnim = deerParent.GetComponent<Animator>();
    }

    public void Show(string animalType)
    {
        // Ensure this parent container is active
        gameObject.SetActive(true);

        if (animalType == "Bear")
        {
            bearParent.SetActive(true);

            bearAnim.Play("Idle", 0, 0);
            bearAnim.ResetTrigger("PickUp");
            bearAnim.SetTrigger("PickUp");

            CancelInvoke(nameof(HideBear));
            Invoke(nameof(HideBear), 2f);
        }
        else if (animalType == "Deer")
        {
            deerParent.SetActive(true);
            Debug.Log("working activate");

            deerAnim.Play("Idle", 0, 0);
            deerAnim.ResetTrigger("PickUp");
            deerAnim.SetTrigger("PickUp");

            CancelInvoke(nameof(HideDeer));
            Invoke(nameof(HideDeer), 2f);
        }
    }

    void HideBear()
    {
        bearParent.SetActive(false);
    }

    void HideDeer()
    {
        deerParent.SetActive(false);
    }
}
