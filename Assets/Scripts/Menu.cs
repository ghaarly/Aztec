using UnityEngine;
using UnityEngine.UI;
using System.Collections;

public class Menu : MonoBehaviour
{
    public CanvasGroup titulo;
    public CanvasGroup botons;
    public CanvasGroup controls;
    public float fadeTime = 1f;

    private bool hasClicked = false;

    void Start()
    {
        titulo.alpha = 1f;
        titulo.interactable = true;
        titulo.blocksRaycasts = true;

        botons.alpha = 0f;
        botons.interactable = false;
        botons.blocksRaycasts = false;

        controls.alpha = 0f;
        controls.interactable = false;
        controls.blocksRaycasts = false;
    }

    void Update()
    {
        if (Input.GetMouseButtonDown(0) && !hasClicked)
        {
            hasClicked = true;
            StartCoroutine(ToMenu());
        }
    }

    IEnumerator ToMenu()
    {
        yield return StartCoroutine(FadeCanva(titulo, 1f, 0f));
        yield return StartCoroutine(FadeCanva(botons, 0f, 1f));

        botons.interactable = true;
        botons.blocksRaycasts = true;
    }

    public void Controls()
    {
        StartCoroutine(ChangeGroup(botons, controls));
    }

    public void GoMenu()
    {
        StartCoroutine(ChangeGroup(controls, botons));
    }

    IEnumerator ChangeGroup(CanvasGroup prev, CanvasGroup next)
    {
        prev.interactable = false;
        prev.blocksRaycasts = false;
        yield return StartCoroutine(FadeCanva(prev, 1f, 0f));
        yield return StartCoroutine(FadeCanva(next, 0f, 1f));
        next.interactable = true;
        next.blocksRaycasts = true;
    }
    IEnumerator FadeCanva(CanvasGroup canvasGroup, float startAlpha, float endAlpha)

    {
        float time = 0f;
        while (time < fadeTime)
        {
            time += Time.deltaTime;
            canvasGroup.alpha = Mathf.Lerp(startAlpha, endAlpha, time / fadeTime);
            yield return null;
        }
        canvasGroup.alpha = endAlpha;
    }
}
