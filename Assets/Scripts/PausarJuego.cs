using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;


public class PausarJuego : MonoBehaviour
{
    public GameObject menupausa;
    public bool juegopausado = false;

    public void GoToScene(string scene)
    {
        SceneManager.LoadScene(scene);
    }

    public void QuitGame()
    {
        Application.Quit();
    }


    private void Update()
    {
        if (Input.GetKeyDown(KeyCode.Escape))
        {
            if (juegopausado)
            {
                Reanudar();
            }
            else
            {
                Pausar();
            }

        }
    }

    public void Reanudar(  )
    {
        menupausa.SetActive(false);
        Time.timeScale = 1;
        juegopausado = false;

    }
    public void Pausar( )
    {
        menupausa.SetActive(true);
        Time.timeScale = 0;
        juegopausado = true;
    }

}
