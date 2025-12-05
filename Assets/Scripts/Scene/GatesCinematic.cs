using UnityEngine;
using UnityEngine.SceneManagement;
using UnityEngine.UI;
using System.Collections;
using System.Collections.Generic;

public class GatesCinematic : MonoBehaviour
{
    [Header("Enemigos / Objetos a eliminar")]
    public List<GameObject> targets;

    [Header("UI")]
    public Text enemyCounterText;

    private int enemiesRemaining;
    [Header("Jugador")]
    public GameObject player;
    public MonoBehaviour[] playerControlScripts;
    public Canvas gameCanvas;

    [Header("Objetos")]
    public GameObject Door;
    public GameObject Deteails;
    public GameObject objectToActivate;

    [Header("Cámaras")]
    public Camera gameCamera;
    public Camera cinematicCamera;

    [Header("Fade")]
    public Image fadeImage;
    public float fadeTime = 1f;

    [Header("Animación final")]
    public Animator gateAnim;
    public string animationTrigger = "OpenGate";
    public float secondsToWait = 3f;

    [Header("Siguiente escena")]
    public string nextSceneName;

    private bool sequenceStarted = false;

    void Start()
    {
        if (cinematicCamera != null)
            cinematicCamera.gameObject.SetActive(false);

        fadeImage.color = new Color(0, 0, 0, 0);

        enemiesRemaining = targets.Count;
        UpdateEnemyCounter();

        StartCoroutine(CheckTargetsRoutine());
    }

    IEnumerator CheckTargetsRoutine()
    {
        while (!sequenceStarted)
        {
            for (int i = targets.Count - 1; i >= 0; i--)
            {
                if (targets[i] == null)
                {
                    enemiesRemaining--;
                    UpdateEnemyCounter();

                    targets.RemoveAt(i);
                }
            }

            if (targets.Count == 0 && !sequenceStarted)
            {
                sequenceStarted = true;
                StartCoroutine(EndSequence());
            }

            yield return new WaitForSeconds(0.2f);
        }
    }
    void UpdateEnemyCounter()
    {
        if (enemyCounterText != null)
        {
            enemyCounterText.text = "" + enemiesRemaining;
        }
    }

    IEnumerator EndSequence()
    {
        foreach (var script in playerControlScripts)
            script.enabled = false;

        if (gameCanvas != null)
            gameCanvas.enabled = false;

        yield return StartCoroutine(FadeToBlack());
        gameCamera.gameObject.SetActive(false);
        cinematicCamera.gameObject.SetActive(true);
        yield return StartCoroutine(FadeFromBlack());

        if (Door != null) Door.SetActive(false);
        if (Deteails != null) Deteails.SetActive(false);
        if (objectToActivate != null) objectToActivate.SetActive(true);

        gateAnim.SetTrigger(animationTrigger);
        yield return new WaitForSeconds(secondsToWait);
        SceneManager.LoadScene(nextSceneName);
    }

    IEnumerator FadeToBlack()
    {
        float t = 0;
        while (t < fadeTime)
        {
            t += Time.deltaTime;
            fadeImage.color = new Color(0, 0, 0, t / fadeTime);
            yield return null;
        }
    }

    IEnumerator FadeFromBlack()
    {
        float t = 0;
        while (t < fadeTime)
        {
            t += Time.deltaTime;
            fadeImage.color = new Color(0, 0, 0, 1 - (t / fadeTime));
            yield return null;
        }
    }
}
