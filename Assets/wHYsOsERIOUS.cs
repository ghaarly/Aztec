using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class wHYsOsERIOUS : MonoBehaviour
{
    public AudioSource audioSource;
    private void OnTriggerEnter(Collider other)
    {
        if (audioSource != null)
            audioSource.Play();
    }

}
