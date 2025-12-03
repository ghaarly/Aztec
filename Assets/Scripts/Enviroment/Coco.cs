using UnityEngine;

public class HealingCoconut : MonoBehaviour
{
    [Header("Curación")]
    [SerializeField] private int damageAmount = -10;

    [Header("Componentes")]
    [SerializeField] private Rigidbody rb; 
    [SerializeField] private GameObject originalObject;
    [SerializeField] private GameObject healObject;   

    private bool hasFallen = false;
    private bool hasTriggeredGround = false;

    private void Awake()
    {
        if (rb == null) rb = GetComponent<Rigidbody>();

        rb.isKinematic = true;

        if (healObject != null)
            healObject.SetActive(false);
    }

    private void OnTriggerEnter(Collider other)
    {
        if (!hasFallen && other.CompareTag("Arrow"))
        {
            Fall();
        }

        if (hasTriggeredGround && healObject.activeSelf)
        {
            PlayerBehaviour player = other.GetComponent<PlayerBehaviour>();
            if (player != null)
            {
                player.TakeDamage(damageAmount);
                Destroy(gameObject);
            }
        }
    }

    private void OnCollisionEnter(Collision collision)
    {
        if (hasFallen && !hasTriggeredGround)
        {
            TriggerGroundImpact();
        }
    }

    private void Fall()
    {
        hasFallen = true;
        rb.isKinematic = false;
        rb.AddForce(Vector3.down * 0.1f, ForceMode.Impulse);

        if (originalObject != null)
            originalObject.SetActive(false);
    }

    private void TriggerGroundImpact()
    {
        hasTriggeredGround = true;
        Debug.Log("GOLPE");

        if (healObject != null)
            healObject.SetActive(true);

    }
}
