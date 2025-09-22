using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class DistanceEnemy : Enemy
{

    public void Update()
    {
        if (!PatrolMode)
        {
            if (PatrolC == null)
            {
                PatrolC = StartCoroutine(ChaseCoroutine(GameManagment.Instance.player.transform.position));
            }
            if (ShootC == null)
            {
                ShootC = StartCoroutine(ShootCoroutine());
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
        if (!PatrolMode && DetectPLayer(transform.position, 10f))
        {
            if (ShootC == null)
            {
                ShootC = StartCoroutine(ShootCoroutine());
            }
        }


        anim.SetFloat("speed", agent.velocity.magnitude);

    }
    public Transform shootPos;
    public BulleteEnemy bullet;

    protected Coroutine ShootC;
    protected IEnumerator ShootCoroutine()
    {
        Shoot();
        yield return new WaitForSeconds(1f);
        ShootC = null;
    }

    public void Shoot()
    {
        anim.SetTrigger("Attack");
        BulleteEnemy myBullet = Instantiate(bullet, shootPos.position, Quaternion.identity);
        myBullet.transform.forward = transform.forward;
        Destroy(myBullet.gameObject, 3);
    }
      

}
