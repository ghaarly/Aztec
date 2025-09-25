using UnityEngine;

public class Spikes : MonoBehaviour
{
    [Header("Da�o")]
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
