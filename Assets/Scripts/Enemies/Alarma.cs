using UnityEngine;

public class Alarma : MonoBehaviour
{
    [Header("Campanero")]
    [SerializeField] private Enemy campanero;

    [Header("Enemigos")]
    [SerializeField] private Transform[] Enemies;
    [SerializeField] private Transform[] enemySpawnPoints;
    [SerializeField] private GameObject enemyPrefab;

    [Header("Campana")]
    [SerializeField] private AudioClip bellSound;
    [SerializeField] private AudioSource audioSource;
    [SerializeField] private GameObject BellMesh;
    [SerializeField] private Animator bellAnim;

    [Header("Interacciones")]
    [SerializeField] private bool hasActivated = false; 
    [SerializeField] private bool enemiesSpawned = false;

    [Header("Activadores por impacto")]
    [SerializeField] private GameObject[] objetosQueActivanSonido;

    void Start()
    {
        if (audioSource == null && BellMesh != null)
        {
            audioSource = BellMesh.GetComponent<AudioSource>();
        }
    }
    private void OnTriggerEnter(Collider other)
    {
        if (!other.CompareTag("Player")) return;
        if (hasActivated) return;
        if (campanero != null && campanero.IsAlive)
        {
            hasActivated = true;
            ActivarAlarma(true);
        }
    }

    private void OnCollisionEnter(Collision collision)
    {
        if (!hasActivated && collision.gameObject.CompareTag("PlayerArrow"))
        {
            hasActivated = true;
            ActivarAlarma(true);
        }

        foreach (GameObject obj in objetosQueActivanSonido)
        {
            if (collision.gameObject == obj)
            {
                ActivarAlarma(false); 
                break;
            }
        }
    }
    void ActivarAlarma(bool spawnEnemies)
    {
        if (spawnEnemies && !enemiesSpawned)
        {
          /*  foreach (Transform point in enemySpawnPoints)
            {
                Instantiate(enemyPrefab, point.position, point.rotation);
            }*/
          foreach (var x in Enemies)
            {
                x.gameObject.SetActive(true);
            }
            enemiesSpawned = true;
        }
        if (bellSound != null && audioSource != null)
        {
            audioSource.PlayOneShot(bellSound);
        }
        if (bellAnim != null)
        {
            bellAnim.SetTrigger("Ring");
        }

        Debug.Log("¡Campana activada! Spawn: " + spawnEnemies);
    }
}
