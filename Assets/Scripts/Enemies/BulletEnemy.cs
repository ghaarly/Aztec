using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class BulletEnemy : MonoBehaviour
{
    [SerializeField] public int damage = 30;
    [SerializeField] public float speed;
    [SerializeField] public float destroyTime = 8f;
    private void Start()
    {
        Destroy(gameObject, destroyTime);
    }
    private void Update()
    {
        transform.position += transform.forward * speed * Time.deltaTime;
    }
    private void OnTriggerEnter(Collider other)
    {
        PlayerBehaviour player;
        if (other.TryGetComponent<PlayerBehaviour>(out player))
        {
            player.TakeDamage(damage);
        }
        Destroy(gameObject);
    }
}
