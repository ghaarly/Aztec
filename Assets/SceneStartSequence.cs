using UnityEngine;
using UnityEngine.UI;
using TMPro;
using System.Collections;
using System.Collections.Generic;

public class IntroDialogueFixed : MonoBehaviour
{
    [Header("UI")]
    public Canvas introCanvas;         // Canvas del diálogo/intro
    public Canvas gameplayCanvas;      // Canvas del HUD
    public Image fadeImage;            // Panel negro (Image full screen)
    public TMP_Text textDisplay;       // TextMeshPro - texto del diálogo

    [Header("Dialogue")]
    [TextArea(2, 5)]
    public List<string> lines;
    public float typewriterSpeed = 0.03f;
    public float textFadeDuration = 0.25f;

    [Header("Panel fade per line")]
    [Tooltip("Cuánto resta al alpha del panel por cada línea (0..1)")]
    public float fadeStep = 0.2f;
    public float panelFadeDuration = 0.35f;

    [Header("Player scripts to toggle")]
    public MonoBehaviour playerBehaviour; // tu script de movimiento
    public MonoBehaviour playerShoot;     // tu script de disparo

    // estado interno
    int index = 0;
    bool isTyping = false;
    Coroutine typingCoroutine = null;
    Coroutine panelFadeCoroutine = null;

    void Start()
    {
        // UI: Intro on, HUD off
        if (introCanvas) introCanvas.gameObject.SetActive(true);
        if (gameplayCanvas) gameplayCanvas.gameObject.SetActive(false);

        // Desactivar scripts del jugador (si existen)
        if (playerBehaviour) playerBehaviour.enabled = false;
        if (playerShoot) playerShoot.enabled = false;

        // Asegurar que el panel esté totalmente negro al inicio
        SetPanelAlpha(1f);

        // Empezar la primera línea
        if (lines != null && lines.Count > 0)
        {
            typingCoroutine = StartCoroutine(ShowLine(lines[0]));
        }
        else
        {
            // Si no hay líneas, terminar inmediatamente
            EndIntroImmediate();
        }
    }

    void Update()
    {
        if (Input.GetMouseButtonDown(0))
        {
            OnUserClick();
        }
    }

    void OnUserClick()
    {
        if (isTyping)
        {
            // completar la línea actual instantáneamente (detener solo la corutina de tipeo)
            if (typingCoroutine != null)
            {
                StopCoroutine(typingCoroutine);
                typingCoroutine = null;
            }
            textDisplay.text = lines[index];
            isTyping = false;
            return;
        }

        // si no está tipeando, avanzar
        index++;

        // Reducir alpha del panel por cada línea (controlado aquí)
        float newTarget = Mathf.Clamp01(fadeImage.color.a - fadeStep);
        if (panelFadeCoroutine != null) StopCoroutine(panelFadeCoroutine);
        panelFadeCoroutine = StartCoroutine(FadePanelTo(newTarget, panelFadeDuration));

        if (index >= lines.Count)
        {
            // fin de diálogo
            StartCoroutine(EndSequenceRoutine());
        }
        else
        {
            // mostrar la siguiente línea
            if (typingCoroutine != null) StopCoroutine(typingCoroutine);
            typingCoroutine = StartCoroutine(ShowLine(lines[index]));
        }
    }

    IEnumerator ShowLine(string line)
    {
        isTyping = true;

        // (Opcional) fade out rápido del texto previo para "resetear" — usa tiempo real
        float t = 0f;
        float startAlpha = textDisplay.alpha;
        while (t < textFadeDuration)
        {
            t += Time.unscaledDeltaTime;
            textDisplay.alpha = Mathf.Lerp(startAlpha, 0f, t / textFadeDuration);
            yield return null;
        }

        textDisplay.text = "";
        textDisplay.alpha = 1f;

        // Typewriter (usa WaitForSecondsRealtime para no depender de timescale)
        for (int i = 0; i < line.Length; i++)
        {
            textDisplay.text += line[i];
            yield return new WaitForSecondsRealtime(typewriterSpeed);
        }

        isTyping = false;
        typingCoroutine = null;
    }

    IEnumerator FadePanelTo(float targetAlpha, float duration)
    {
        float start = fadeImage.color.a;
        float t = 0f;

        while (t < duration)
        {
            t += Time.unscaledDeltaTime;
            float a = Mathf.Lerp(start, targetAlpha, t / duration);
            SetPanelAlpha(a);
            yield return null;
        }

        SetPanelAlpha(targetAlpha);
        panelFadeCoroutine = null;
    }

    IEnumerator EndSequenceRoutine()
    {
        // Fade out final del texto
        float t = 0f;
        float startAlpha = textDisplay.alpha;
        float fadeOutTime = Mathf.Max(0.15f, textFadeDuration);
        while (t < fadeOutTime)
        {
            t += Time.unscaledDeltaTime;
            textDisplay.alpha = Mathf.Lerp(startAlpha, 0f, t / fadeOutTime);
            yield return null;
        }

        // Asegurar el panel totalmente transparente al final
        if (panelFadeCoroutine != null) StopCoroutine(panelFadeCoroutine);
        yield return StartCoroutine(FadePanelTo(0f, panelFadeDuration));

        // Desactivar intro y activar gameplay
        if (introCanvas) introCanvas.gameObject.SetActive(false);
        if (gameplayCanvas) gameplayCanvas.gameObject.SetActive(true);

        // Reactivar scripts
        if (playerBehaviour) playerBehaviour.enabled = true;
        if (playerShoot) playerShoot.enabled = true;

        yield break;
    }

    void EndIntroImmediate()
    {
        // Caso sin líneas: simplemente restaurar
        SetPanelAlpha(0f);
        if (introCanvas) introCanvas.gameObject.SetActive(false);
        if (gameplayCanvas) gameplayCanvas.gameObject.SetActive(true);
        if (playerBehaviour) playerBehaviour.enabled = true;
        if (playerShoot) playerShoot.enabled = true;
    }

    void SetPanelAlpha(float a)
    {
        if (fadeImage == null) return;
        Color c = fadeImage.color;
        c.a = a;
        fadeImage.color = c;
    }
}
