using UnityEngine;
using UnityEngine.SceneManagement;
using UnityEngine.UI;
using System.Collections;

public class Menu : MonoBehaviour
{
    [Header("Canvas Groups")]
    public CanvasGroup mainMenu;
    public CanvasGroup optionsMenu;
    public CanvasGroup controlsMenu;
    public CanvasGroup creditsMenu;
    public CanvasGroup juegoMenu;

    public float fadeTime = 0.4f;

    private CanvasGroup currentGroup;

    void Start()
    {
        ShowOnly(mainMenu);
    }

    void ShowOnly(CanvasGroup group)
    {
        SetGroupState(mainMenu, false);
        SetGroupState(optionsMenu, false);
        SetGroupState(controlsMenu, false);
        SetGroupState(creditsMenu, false);

        group.alpha = 1;
        group.interactable = true;
        group.blocksRaycasts = true;

        currentGroup = group;
    }

    IEnumerator Swap(CanvasGroup next)
    {
        if (next == currentGroup) yield break;

        CanvasGroup prev = currentGroup;

        SetInteractable(prev, false);
        yield return StartCoroutine(Fade(prev, 1, 0));

        yield return StartCoroutine(Fade(next, 0, 1));
        SetInteractable(next, true);

        currentGroup = next;
    }

    IEnumerator Fade(CanvasGroup cg, float a, float b)
    {
        float t = 0;
        while (t < fadeTime)
        {
            t += Time.deltaTime;
            cg.alpha = Mathf.Lerp(a, b, t / fadeTime);
            yield return null;
        }
        cg.alpha = b;
    }

    void SetGroupState(CanvasGroup g, bool state)
    {
        g.alpha = state ? 1 : 0;
        g.interactable = state;
        g.blocksRaycasts = state;
    }

    void SetInteractable(CanvasGroup g, bool value)
    {
        g.interactable = value;
        g.blocksRaycasts = value;
    }
    public void BtnPlay()
    {
        SceneManager.LoadScene("Nivel 1");
    }
    public void BtnTutorial()
    {
        SceneManager.LoadScene("Juego");
    }
    public void BtnMenuJuego()
    {
        StartCoroutine(Swap(juegoMenu));
    }

    public void BtnControls()
    {
        StartCoroutine(Swap(controlsMenu));
    }
    public void BtnOptions()
    {
        StartCoroutine(Swap(optionsMenu));
    }
    public void BtnCredits()
    {
        StartCoroutine(Swap(creditsMenu));
    }
    public void BtnBack()
    {
        StartCoroutine(Swap(mainMenu));
    }
    public void OnVolumeChanged(float v)
    {
        AudioListener.volume = v;
    }
}
