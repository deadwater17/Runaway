using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.AI;
using UnityEngine.SocialPlatforms.GameCenter;

public class AnimalMovement : MonoBehaviour
{
    public NavMeshAgent agent;
    public float range;
    public GameObject player;
    public Transform centrePoint;
    public bool isHear;
    public bool isWonder;
    void Start()
    {
        agent = GetComponent<NavMeshAgent>();
        isWonder = true;
        isHear = false;
    }

    // Update is called once per frame
    void Update()
    {
        //wondering mode;
        if (isWonder)
        {
            if (agent.remainingDistance <= agent.stoppingDistance)
            {
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
            //Run away from player
            Vector3 direction = (transform.position - player.transform.position).normalized;
            Vector3 destination = transform.position + 25 * direction;
            agent.SetDestination(destination);
            isWonder = false;
            isHear = false;
            agent.speed = 7f;
            Debug.Log("animal run");
        }

        if(agent.remainingDistance <= agent.stoppingDistance && !isHear &&!isWonder)
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
}
