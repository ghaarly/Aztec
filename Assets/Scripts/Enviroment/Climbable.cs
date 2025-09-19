using UnityEngine;

public class Climbable : MonoBehaviour, IClimbable
{
    public float climbSpeed = 2f;

    private Vector3 climbStart;
    private Vector3 climbEnd;

    private void Awake()
    {
        Collider col = GetComponent<Collider>();
        if (col != null)
        {
            climbStart = new Vector3(transform.position.x, col.bounds.min.y, transform.position.z);
            climbEnd = new Vector3(transform.position.x, col.bounds.max.y, transform.position.z);
        }
        else
        {
            climbStart = transform.position;
            climbEnd = transform.position + Vector3.up * 3f; // ejemplo: 3 metros de altura
        }
    }

    public void Interact(PlayerBehaviour player)
    {
        player.IniciarEscalada(climbStart, climbEnd, climbSpeed);
    }
}
