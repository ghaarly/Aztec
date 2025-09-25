using UnityEngine;
public class SlowZone : MonoBehaviour
{
    [Header("Reducci�n de velocidad")]
    [SerializeField] private float speedMultiplier = 0.5f;

    [Header("Reducci�n de sensibilidad")]
    [SerializeField] private float sensitivityReduction = 20f;

    private void OnTriggerEnter(Collider other)
    {
        PlayerBehaviour player = other.GetComponent<PlayerBehaviour>();
        if (player != null)
        {
            player.EnterSlowZone(speedMultiplier, sensitivityReduction);
        }
    }
    private void OnTriggerExit(Collider other)
    {
        PlayerBehaviour player = other.GetComponent<PlayerBehaviour>();
        if (player != null)
        {
            player.ExitSlowZone();
        }
    }
}
