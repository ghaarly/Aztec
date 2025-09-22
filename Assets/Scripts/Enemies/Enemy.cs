using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.AI;

public class Enemy : MonoBehaviour
{
    [SerializeField] private int enemyLife;
    [SerializeField] public NavMeshAgent agent;
    [SerializeField] protected float radius;



    public void TakeDamage()
    {
        Debug.Log("recibio dano");
        enemyLife--;
        if (enemyLife <= 0)
        {
            print("Enemigo muerto");
            Destroy(gameObject);
        }
    }

    public Transform[] waypoints;
    public int index;

    public float PathUpdateTime;

    public bool PatrolMode;
    public void Patrol()
    {
        agent.destination = waypoints[index].position;
    }

    public void CheckDistanceWaypoint()
    {
        if (Vector3.Distance(transform.position, waypoints[index].position) < 1.3f) index++;
        if (index >= waypoints.Length) index = 0;
    }

    public Animator anim;

    protected Coroutine PatrolC;
    protected IEnumerator ChaseCoroutine(Vector3 target)
    {
        UpdatePath(target);
        yield return new WaitForSeconds(PathUpdateTime);
        PatrolC = null;
    }

    protected IEnumerator PatrolCoroutine()
    {
        Patrol();
        yield return new WaitForSeconds(PathUpdateTime);
        PatrolC = null;
    }


    public void UpdatePath(Vector3 target)
    {
        agent.destination = target;
    }
    public bool DetectPLayer(Vector3 origin, float distance)
    {
        Collider[] colliders = Physics.OverlapSphere(origin, distance, LayerMask.GetMask("Player"));
        return colliders.Length > 0;
    }

}
