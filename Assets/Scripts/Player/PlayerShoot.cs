using UnityEngine;
using UnityEngine.UI;

public class PlayerShooting : MonoBehaviour
{
    [Header("Arco")]
    public Transform shootPoint;
    public GameObject arrowPrefab;
    public float aimSensitivity = 30f;
    public float maxForce = 30f;
    public float chargeSpeed = 20f;

    [Header("Flechas")]
    public int maxArrows = 10;
    public int currentArrows = 10;
    public Image[] arrowIcons;

    [Header("Tensiometro o algo así")]
    public GameObject chargeUIContainer;
    public Slider chargeSlider; 

    [Header("Camara")]
    public Transform cameraTransform;
    public PlayerBehaviour playerBehaviour;

    private float currentForce = 0f;
    private bool isAiming = false;
    private bool isCharging = false;
    private float originalSensitivity;

    void Update()
    {
        HandleAim();
    }

    void HandleAim()
    {
        if (Input.GetMouseButtonDown(1))
        {
            isAiming = true;
            originalSensitivity = playerBehaviour.mouseSensitivity;
            playerBehaviour.mouseSensitivity = aimSensitivity;
        }
       
        if (Input.GetMouseButtonUp(1))
        {
            isAiming = false;
            isCharging = false;
            playerBehaviour.mouseSensitivity = originalSensitivity;
            currentForce = 0f;
            UpdateChargeUI(false);
        }
      
        if (isAiming) // Cuando apunta activa el tensiometro
        {
            if (Input.GetMouseButtonDown(0))
            {
                isCharging = true;
                currentForce = 0f;
                UpdateChargeUI(true);
            }

            if (isCharging && Input.GetMouseButton(0))
            {
                currentForce += chargeSpeed * Time.deltaTime;
                currentForce = Mathf.Clamp(currentForce, 0f, maxForce);
                UpdateChargeUI(true);
            }

            if (isCharging && Input.GetMouseButtonUp(0))
            {
                ShootArrow(currentForce);
                currentForce = 0f;
                isCharging = false;
                UpdateChargeUI(false);
            }
        }
    }

    void ShootArrow(float force)
    {
        if (arrowPrefab == null || shootPoint == null || currentArrows <= 0) return;

        GameObject arrow = Instantiate(arrowPrefab, shootPoint.position, shootPoint.rotation);
        Rigidbody arrowRb = arrow.GetComponent<Rigidbody>();

        if (arrowRb != null)
        {
            arrowRb.velocity = shootPoint.forward * force;
        }
        currentArrows--;
        UpdateArrowUI();
    }
    public void UpdateArrowUI()
    {
        if (arrowIcons == null || arrowIcons.Length == 0) return;

        for (int i = 0; i < arrowIcons.Length; i++)
        {
            if (i < currentArrows)
            {
                arrowIcons[i].enabled = true;  
            }
            else
            {
                arrowIcons[i].enabled = false; 
            }
        }
    }


    void UpdateChargeUI(bool visible)
    {
        if (chargeUIContainer != null)
        {
            chargeUIContainer.SetActive(visible);
        }

        if (chargeSlider != null)
        {
            chargeSlider.value = currentForce / maxForce;
        }
    }
}
