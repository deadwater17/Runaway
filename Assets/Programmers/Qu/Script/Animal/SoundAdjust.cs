using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SoundAdjust : MonoBehaviour
{
    AudioSource m_audiosource;
    AudioClip clip;
    int min = 1;
    int foot = 40;
    int bow = 70;
    int gun = 145;

    public void soundRangeAdjust(AudioSource audiosource)
    {
        m_audiosource = audiosource;
        clip = audiosource.clip;
        if (clip.name == "Footstep01" || clip.name == "Footstep02" || clip.name == "Footstep03" || clip.name == "Footstep04")
        {
            adjust(min, foot);
        }
        else if (clip.name == "gun")
        {
            adjust(min, gun);
        }
        else
        {

        }
        AnimalsInRange();
        //...
    }
    public void adjust(int min,int max)
    {
        m_audiosource.minDistance = min;
        m_audiosource.maxDistance = max;
    }

    private void AnimalsInRange()
    {
        Collider[] hitColliders = Physics.OverlapSphere(transform.position, m_audiosource.maxDistance);
        foreach (Collider collider in hitColliders) 
        {
            AnimalMovement animal = collider.GetComponent<AnimalMovement>();
            if(animal != null)
            {
                animal.isHear = true;
            }
        
        }
    }
    
}
