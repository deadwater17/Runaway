using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class WorldCanvasManager : MonoBehaviour
{
    public GameObject animalCanvas;
    public GameObject shopItemCanvas;

    private void Start()
    {
        HideAllCanvases();
    }

    public void ShowAnimalCanvas()      
    {
        HideAllCanvases();
        animalCanvas.SetActive(true);
    }

    public void ShowShopItemCanvas()
    {
        HideAllCanvases();
        shopItemCanvas.SetActive(true);
    }

    public void HideAllCanvases()
    {
        animalCanvas.SetActive(false);
        shopItemCanvas.SetActive(false);
    }
    
    void LateUpdate()
    {
        transform.LookAt(transform.position + Camera.main.transform.rotation * Vector3.forward,
            Camera.main.transform.rotation * Vector3.up);
    }
}
