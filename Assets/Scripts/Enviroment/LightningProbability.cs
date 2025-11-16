using UnityEngine;

public class LightningProbability : MonoBehaviour
{
    [Header("Referencias")]
    public Light thunderStruck;
    public AudioSource mainThunderSound;
    public AudioSource altThunderSound;

    [Header("Probabilidad del rayo")]
    [Range(0f, 1f)]
    public float probabilityPerSecond = 0.1f;

    [Header("Probabilidad del trueno alternativo")]
    [Range(0f, 1f)]
    public float altSoundProbability = 0.3f;

    [Header("Flash")]
    public float flashDuration = 0.1f;

    [Header("Cooldown")]
    public float cooldownTime = 3f; 

    private bool onCooldown = false;

    private void Start()
    {
        if (thunderStruck != null)
            thunderStruck.enabled = false;
    }

    private void Update()
    {
        if (!onCooldown) 
        {
            RideTheLightning();
        }
    }

    void RideTheLightning()
    {
        float frameProbability = probabilityPerSecond * Time.deltaTime;

        if (Random.value < frameProbability)
        {
            StartCoroutine(BlackThunder());
        }
    }

    System.Collections.IEnumerator BlackThunder()
    {
        onCooldown = true; 

        if (thunderStruck != null)
            thunderStruck.enabled = true;

        if (mainThunderSound != null)
            mainThunderSound.Play();

        if (altThunderSound != null)
        {
            if (Random.value < altSoundProbability)
                altThunderSound.Play();
        }

        yield return new WaitForSeconds(flashDuration);
        if (thunderStruck != null)
            thunderStruck.enabled = false;

        yield return new WaitForSeconds(cooldownTime);
        onCooldown = false; 
    }
}
