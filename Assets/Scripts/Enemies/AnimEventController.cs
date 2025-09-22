using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class AnimEventController : MonoBehaviour
{
    public Transform HitBox;

    public void attackenter()
    { 
      HitBox.gameObject.SetActive(true);
    }

    public void attackleave() 
    {
        HitBox.gameObject.SetActive(false);
    }
}
