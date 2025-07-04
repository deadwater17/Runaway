using System.Collections;
using System.Collections.Generic;
using Unity.VisualScripting;
using UnityEngine;
using UnityEngine.AI;

public class AnimalMovement : MonoBehaviour
{
    public NavMeshAgent agent;
    public float range;
    public GameObject player;
    public Transform centrePoint;
    public bool isHear;
    public bool isWonder;
    public bool isAlive;
    Animator DeerAnimator;

    // health setting
    public float maxHealth = 100;
    public float currentHealth;

    public float walkSpeed;
    public float runSpeed;

    public AudioSource audioSource;
    public AudioClip hit;


    void Start()
    {
        currentHealth = maxHealth;
        agent = GetComponent<NavMeshAgent>();
        DeerAnimator = GetComponent<Animator>();
        isWonder = true;
        isHear = false;
        isAlive = true;
    }

    // Update is called once per frame
    void Update()
    {
        //wondering mode;
        if (isWonder)
        {
            if (agent.remainingDistance <= agent.stoppingDistance)
            {
                DeerAnimator.SetFloat("Speed", 2.5f);
                Vector3 point;
                if (RandomPoint(centrePoint.position, range, out point))
                {
                    Debug.DrawRay(point, Vector3.up, Color.blue, 1.0f);
                    agent.SetDestination(point);
                    agent.speed = 2.5f;
                }
            }
            
        }

        //Runaway mode;
        if (isHear)
        {
            DeerAnimator.SetFloat("Speed", 7.5f);
            int maxTries = 10;
            Vector3 destination = transform.position;
            for (int i = 0; i < maxTries; i++)
            {
                //Run away from player
                Vector3 direction = (transform.position - player.transform.position).normalized;
                Vector3 fleetdirec = direction + new Vector3(Random.Range(-1f, 1f), 0, Random.Range(-1f, 1f));
                fleetdirec.Normalize();
                //add randomness to the animal's run away path
                destination = transform.position + 25 * fleetdirec;
                NavMeshHit hit;
                if (NavMesh.SamplePosition(destination, out hit, 5.0f, NavMesh.AllAreas))
                {
                    destination = hit.position;
                    Debug.Log("try:  "+ i);
                    break;
                }
            }
            agent.speed = runSpeed;
            agent.SetDestination(destination);
            isWonder = false;
            isHear = false;
            Debug.Log("animal run");
        }

        if(agent.remainingDistance <= agent.stoppingDistance && !isHear &&!isWonder) //decide whether to come back to wondering mode
        {
            Debug.Log("end run");
            isWonder = true;
        }

        
    }


    bool RandomPoint(Vector3 center, float range, out Vector3 result)
    {
        Vector3 randomPoint = center + Random.insideUnitSphere * range;
        NavMeshHit hit;
        if(NavMesh.SamplePosition(randomPoint,out hit,1.0f,NavMesh.AllAreas))
        {
            result = hit.position;
            return true;
        }

        result = Vector3.zero;
        return false;
    }

    public void TakeDamage(float damage)
    {
        currentHealth -= damage;
        audioSource.PlayOneShot(hit);
        if(currentHealth <= 0)
        {
            isAlive = false;
            Die();
            //animation dying
        }
    }

    void Die()
    {
        Debug.Log("enemy die");
        DeerAnimator.SetFloat("Speed", 0.0f);
        DeerAnimator.SetBool("Death", true); // trigger Deer_Death animation
        agent.enabled = false; // Optional: stops movement cleanly
        this.enabled = false;  // disable this script after triggering death
    }
}
