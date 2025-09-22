using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[RequireComponent(typeof(Rigidbody))]
public class EnemyBehabior : MonoBehaviour, Idamage
{
    [SerializeField] private int _maxHP = 20;

    private int _ActualHP = 0;
    private Rigidbody _rb;

    private void Awake()
    {
        _ActualHP = _maxHP;
        _rb = GetComponent<Rigidbody>();
    }

    public void TakeDamage(int Dmg)
    {
        throw new System.NotImplementedException();
    }


}
