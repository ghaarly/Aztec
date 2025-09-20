using UnityEngine;

public class ArrowRefill : MonoBehaviour
{
    [Header("Configuración")]
    public int arrowAmount = 5;
    public bool isDestructible = false;

    private bool used = false;

    void OnTriggerEnter(Collider other)
    {
        PlayerShooting player = other.GetComponent<PlayerShooting>();

        if (player != null && !used)
        {
            player.currentArrows = Mathf.Min(player.currentArrows + arrowAmount, player.maxArrows);
            player.UpdateArrowUI();
            used = true;

            if (isDestructible)
            {
                Destroy(gameObject); 
            }
        }
    }
}
