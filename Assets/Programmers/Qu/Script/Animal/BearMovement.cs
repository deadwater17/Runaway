using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.AI;

public class BearMovement : MonoBehaviour
{
    public NavMeshAgent agent;
    public float range;
    public GameObject player;
    public Transform centrePoint;
    public bool isHear;
    public bool isWonder;
    public bool seePlayer;
    public float time = 0;
    //Animator animator;
    void Start()
    {
        agent = GetComponent<NavMeshAgent>();
        //animator = GetComponent<Animator>();
        isWonder = true;
        isHear = false;
    }

    // Update is called once per frame
    void Update()
    {
        //wondering mode;
        if (isWonder)
        {
            //animator.SetBool("walk", true);
            //animator.SetBool("run", false);
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

        //chasing mode;
        if (isHear)
        {

            //animator.SetBool("run", true);
            //animator.SetBool("walk", false);
            //Run towards player
            Vector3 destination = player.transform.position ;
            agent.speed = 4f;
            agent.SetDestination(destination);
            isWonder = false;
            Debug.Log("animal run : " + agent.speed);
        }

        if (agent.remainingDistance <= agent.stoppingDistance && !isWonder) //decide whether to come back to wondering mode
        {
            Debug.Log("end run");
            isWonder = true;
        }


    }

    bool RandomPoint(Vector3 center, float range, out Vector3 result)
    {
        Vector3 randomPoint = center + Random.insideUnitSphere * range;
        NavMeshHit hit;
        if (NavMesh.SamplePosition(randomPoint, out hit, 1.0f, NavMesh.AllAreas))
        {
            result = hit.position;
            return true;
        }

        result = Vector3.zero;
        return false;
    }


    void SearchPlayer()
    {
        Collider[] playerRange = Physics.OverlapSphere(transform.position, range);
        foreach(Collider player in playerRange)
        {
            Vector3 dirToplayer = (player.transform.position - transform.position).normalized;
            if (Vector3.Angle(dirToplayer, transform.forward) < 80 / 2)
            {
                float desToPlayer = Vector3.Distance(transform.position, player.transform.position);
                if(!Physics.Raycast(transform.position, dirToplayer,desToPlayer))
                {
                    seePlayer = true;
                }
                else
                {
                    seePlayer=false;
                }
            }
        }
    }
}
