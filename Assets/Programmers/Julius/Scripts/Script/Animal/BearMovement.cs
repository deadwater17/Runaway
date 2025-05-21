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
    public bool hasAttacked;

    public bool seePlayer;
    public float range;
    public float viewAngle;
    public float chaseSpeed = 4f;
    public float walkSpeed = 2.5f;
    public float maxHealth = 100;
    public float currentHealth;
    TimeController timeController;
    Animator bearAnimator;

    // ✅ Added reference to DateController
    DateController dateController;

    void Start()
    {
        agent = GetComponent<NavMeshAgent>();
        timeController = FindObjectOfType<TimeController>();
        dateController = FindObjectOfType<DateController>(); // ✅ Find DateController
        bearAnimator = GetComponent<Animator>();
        currentHealth = maxHealth;
        isWander = true;
        isHear = false;
        seePlayer = false;
    }

    void Update()
    {
        SearchPlayer();

        if (isWander)
        {
            bearAnimator.SetFloat("Speed", walkSpeed);
            Wander();
        }

        if (isHear)
        {
            isWander = false;
            bearAnimator.SetFloat("Speed", chaseSpeed);
            ChasePlayer();
        }

        CheckReturnTowander();
        TryAttackPlayer();
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
                agent.speed = walkSpeed;
            }
        }
    }

    void CheckReturnTowander()
    {
        if (Vector3.Distance(transform.position, player.transform.position) > range)
        {
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
            if (target.gameObject == player)
            {
                Vector3 dirToplayer = (player.transform.position - transform.position).normalized;

                if (Vector3.Angle(dirToplayer, transform.forward) < viewAngle / 2)
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

    void TryAttackPlayer()
    {
        if (hasAttacked) return;
        float distance = Vector3.Distance(transform.position, player.transform.position);
        if (distance <= 5f)
        {
            hasAttacked = true;
            bearAnimator.SetTrigger("Attack");

            // ✅ Now uses DateController to perform fade + time skip
            if (dateController != null)
            {
                dateController.AdvanceToMorning();
            }

            Debug.Log("Bear attacked! Player sleeps.");
        }
    }

    public void TakeDamage(float damage)
    {
        currentHealth -= damage;
        if (currentHealth <= 0)
        {
            Die();
        }
    }

    void Die()
    {
        isWander = false;
        isHear = false;
        agent.speed = 0;
        bearAnimator.SetFloat("Speed", 0f);
        bearAnimator.SetBool("Death", true);
        Debug.Log("enemy die");

        agent.enabled = false;
        this.enabled = false;
    }
}
