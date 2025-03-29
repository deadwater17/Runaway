using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.AI;

public class BearMovement : MonoBehaviour
{
    public NavMeshAgent agent;
    public GameObject player;
    public Transform centrePoint;
    public LayerMask obstacle;
    public bool isHear;
    public bool isWander;

    public bool seePlayer;
    public float range;
    public float viewAngle;
    private float chaseSpeed = 4f;

    //Animator animator;
    void Start()
    {
        agent = GetComponent<NavMeshAgent>();
        //animator = GetComponent<Animator>();
        isWander = true;
        isHear = false;
        seePlayer = false;
    }

    // Update is called once per frame
    void Update()
    {

        SearchPlayer();
        //wandering mode;
        if (isWander)
        {
            Wander();
        }

        //chasing mode;
        if (isHear)
        {
            ChasePlayer();
            isWander = false;
            Debug.Log("animal run : " + agent.speed);
        }

        CheckReturnTowander();
    }

    void ChasePlayer()
    {
        agent.speed = chaseSpeed;
        agent.SetDestination(player.transform.position);
    }

    void Wander()
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

    void CheckReturnTowander()
    {
        if (Vector3.Distance(transform.position, player.transform.position) > range) //decide whether to come back to wondering mode
        {
            Debug.Log("end run");
            isWander = true;
            isHear = false;
            seePlayer = false;
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
        foreach (Collider target in playerRange)
        {
            if (target.gameObject == player) // Ensure it is the actual player
            {
                Vector3 dirToplayer = (player.transform.position - transform.position).normalized;

                if (Vector3.Angle(dirToplayer, transform.forward) < viewAngle / 2) // if the player is within the view of bear
                {
                    float desToPlayer = Vector3.Distance(transform.position, player.transform.position);
                    if (!Physics.Raycast(transform.position, dirToplayer, desToPlayer, obstacle))
                    {
                        seePlayer = true;
                        isHear = true;
                    }
                    else
                    {
                        seePlayer = false;
                    }
                }
            }
        }
    }
}

