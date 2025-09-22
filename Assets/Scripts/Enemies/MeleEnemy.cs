using System.Collections;
using System.Collections.Generic;
using UnityEngine;


public class MeleEnemy : Enemy
{
    
    private Coroutine AttackC;


    public void Update()
    {
        if (!PatrolMode)
        {
            if (PatrolC == null)
            {
                PatrolC = StartCoroutine(ChaseCoroutine(GameManagment.Instance.player.transform.position));
            }
        }
        else
        {
            if (PatrolC == null)
            {
                PatrolC = StartCoroutine(PatrolCoroutine());
            }

            CheckDistanceWaypoint();
        }
        if (DetectPLayer(transform.position, radius))
        {
            PatrolMode = false;
        }
        else
        {
            PatrolMode = true;
        }
        if (!PatrolMode && DetectPLayer(transform.position, 2f))
        {
            if (AttackC == null)
            {
                AttackC = StartCoroutine(Attack());
            }
        }


        anim.SetFloat("speed", agent.velocity.magnitude);
        
    }
    public IEnumerator Attack()
    {
        anim.SetTrigger("Attack");
        yield return new WaitForSeconds(1f);
        AttackC=null;
    }
}

