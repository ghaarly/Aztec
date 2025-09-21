using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ArrowProjectile : MonoBehaviour
{
    [Header("Arrow Settings")]
    public int damage = 1;
    public float lifeTime = 3f; // tiempo antes de destruirse solo

    private void Start()
    {
        Destroy(gameObject, lifeTime); // destruir si no impacta nada
    }

    private void OnCollisionEnter(Collision collision)
    {
        // Si choca con un enemigo
        if (collision.gameObject.TryGetComponent(out Enemy enemy))
        {
            enemy.TakeDamage(); // le baja vida
        }

        // En cualquier caso, destruir la flecha al impactar
        Destroy(gameObject);
    }
}