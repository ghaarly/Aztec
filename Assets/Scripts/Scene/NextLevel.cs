using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class NextLevel : MonoBehaviour
{
    [SerializeField] private string changeScene;
    private void OnTriggerEnter(Collider other)
    {
            SceneManager.LoadScene(changeScene);
    }
}
