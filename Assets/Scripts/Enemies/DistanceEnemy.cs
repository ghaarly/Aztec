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

        var player = GameManagment.Instance.player;

        if (player != null && !player.IsHidden && DetectPLayer(transform.position, radius))
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
    public BulletEnemy bullet;

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
        BulletEnemy myBullet = Instantiate(bullet, shootPos.position, Quaternion.identity);
        playshootsound();
        myBullet.transform.forward = transform.forward;
        Destroy(myBullet.gameObject, 3);
    }


    public AudioSource source;
    public AudioClip[] Shootsounds = new AudioClip[0];

    public void playshootsound()
    {
        if (source == null || Shootsounds.Length == 0) return;
        source.PlayOneShot(Shootsounds[Random.Range(0, Shootsounds.Length)]);
    }
}
