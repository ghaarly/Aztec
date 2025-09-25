using UnityEngine;

public class Spikes : MonoBehaviour
{
    [Header("Daño")]
    [SerializeField] private int damageAmount = 1;

    private void OnTriggerEnter(Collider other)
    {
        PlayerBehaviour player = other.GetComponent<PlayerBehaviour>();
        if (player != null)
        {
            player.TakeDamage(damageAmount);
        }
    }
}
