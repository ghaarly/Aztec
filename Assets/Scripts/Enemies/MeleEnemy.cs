using System.Collections;
using System.Collections.Generic;
using UnityEngine;

/*
public class MeleEnemy : Enemy
{
    private void OnCollisionEnter(Collision collision)
    {
        if (collision.gameObject.TryGetComponent(out PlayerMovement player))
        {
            player.TakeDamage();
        }
    }
    public void Update()
    {
        if (!PatrolMode)
        {
            if (PatrolC == null)
            {
                PatrolC = StartCoroutine(ChaseCoroutine(GameManager.Instance.player.transform.position));
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

    }

}
*/
