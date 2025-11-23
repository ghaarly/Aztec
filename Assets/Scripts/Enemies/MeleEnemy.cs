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

        var player = GameManagment.Instance.player;

        if (player != null && !player.IsHidden && DetectPLayer(transform.position, radius))
        {
            PatrolMode = false;
        }
        else
        {
            PatrolMode = true;
        }
        if (!PatrolMode && !player.IsHidden && DetectPLayer(transform.position, 2f))
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
        PlayAttacksounds();
         yield return new WaitForSeconds(1f);
        AttackC=null;

    }

    public AudioSource source;
    public AudioClip[] Attacksounds = new AudioClip[0];

    public void PlayAttacksounds()
    {
        if (source == null || Attacksounds.Length == 0) return;
        source.PlayOneShot(Attacksounds[Random.Range(0, Attacksounds.Length)]);
    }

}

