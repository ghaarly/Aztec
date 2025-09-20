using UnityEngine;
using UnityEngine.SceneManagement;

public class PlayerBehaviour : MonoBehaviour
{
    [Header("Movimiento y Física")]
    public float speed = 4f;
    public float runSpeed = 10f;
    public float crouchSpeed = 0.5f;
    public float jumpHeight = 1.2f;
    public LayerMask groundMask = ~0;
    public Transform groundCheck;
    public float checkRadius = 0.25f;
    public float extraGroundDistance = 0.05f;

    [Header("Collider y Agachado")]
    public float height = 1.8f;
    public float crouchHeight = 1.0f;
    public float timeToCrouch = 8f;
    public Vector3 centerOffset = Vector3.zero;
    public Transform cameraTransform;
    public float cameraHeightOffset = 0f;

    [Header("Mouse y Cámara")]
    public float mouseSensitivity = 100f;
    public float maxPitch = 80f;
    public bool blockCursor = true;

    [Header("Stamina")]
    public float maxStamina = 5f;
    public float staminaUsePerSecond = 1.2f;
    public float staminaRecoveryPerSecond = 2f;

    [Header("Arco")]
    public Transform shootPoint;
    public GameObject arrowPrefab;
    public float aimSensitivity = 30f;
    public float maxForce = 30f;
    public float chargeSpeed = 20f;

    [Header("Ocultamiento")]
    public LayerMask canHide;
    public LayerMask autoHide;
    public GameObject hidingEffect; // Global Volume effect
    private bool inCrouchHideZone = false;
    private bool inAutoHideZone = false;

    [Header("Interacción")]
    public KeyCode interactKey = KeyCode.E;
    public float interactDistance = 3f;
    public LayerMask interactMask = ~0; 


    private Rigidbody rb;
    private CapsuleCollider capsule;
    private Vector3 moveInput;
    private bool isCrouching = false;
    private bool isGrounded = false;
    private float yaw = 0f;
    private float pitch = 0f;
    private float stamina;
    private bool canRun = true;
    private bool isAiming = false;
    private float currentForce = 0f;
    private float originalSensitivity;

    [Header("Escalada")]
    private bool enEscalada = false;
    private Vector3 escaladaInicio;
    private Vector3 escaladaFin;
    private float velocidadEscalada = 2f;
    private float progresoEscalada = 0f;


    [Header("Vida del Jugador")]
    public int maxHealth = 5;
    private int currentHealth;

    void Awake()
    {
        currentHealth = maxHealth;
    }

    public void TakeDamage(int damage = 1)
    {
        currentHealth -= damage;
        Debug.Log("Jugador recibió daño. Vida actual: " + currentHealth);

        if (currentHealth <= 0)
        {
            print("Se murio");
            SceneManager.LoadScene("Menu");

        }
    }


    void Start()
    {
        rb = GetComponent<Rigidbody>();
        capsule = GetComponent<CapsuleCollider>();
        stamina = maxStamina;

        if (blockCursor)
        {
            Cursor.lockState = CursorLockMode.Locked;
            Cursor.visible = false;
        }
    }

    void Update()
    {
        if (enEscalada)
        {
            MovimientoEnEscalada();
            return;
        }
        HandleCamera();
        CheckGround();
        HandleMovement();
        HandleJump();
        HandleCrouch();
        HandleStamina();
        HandleAim();
        HandleInteract();
    }

    void HandleCamera()
    {
        float mouseX = Input.GetAxis("Mouse X") * mouseSensitivity * Time.deltaTime;
        float mouseY = Input.GetAxis("Mouse Y") * mouseSensitivity * Time.deltaTime;

        yaw += mouseX;
        pitch -= mouseY;
        pitch = Mathf.Clamp(pitch, -maxPitch, maxPitch);

        transform.rotation = Quaternion.Euler(0f, yaw, 0f);
        cameraTransform.localRotation = Quaternion.Euler(pitch, 0f, 0f);
    }

    void CheckGround()
    {
        isGrounded = Physics.CheckSphere(groundCheck.position, checkRadius + extraGroundDistance, groundMask);
    }

    void HandleMovement()
    {
        float h = Input.GetAxis("Horizontal");
        float v = Input.GetAxis("Vertical");
        moveInput = transform.right * h + transform.forward * v;

        float targetSpeed = speed;

        if (isCrouching)
        {
            targetSpeed = crouchSpeed;
        }
        else if (canRun && Input.GetKey(KeyCode.LeftShift) && moveInput.magnitude > 0.1f && isGrounded)
        {
            targetSpeed = runSpeed;
            stamina -= staminaUsePerSecond * Time.deltaTime;
        }

        Vector3 desiredVelocity = moveInput.normalized * targetSpeed;
        Vector3 velocity = rb.velocity;
        velocity.x = desiredVelocity.x;
        velocity.z = desiredVelocity.z;
        rb.velocity = velocity;
    }

    void HandleJump()
    {
        if (Input.GetKeyDown(KeyCode.Space) && isGrounded && !isCrouching)
        {
            float jumpVelocity = Mathf.Sqrt(2f * jumpHeight * Mathf.Abs(Physics.gravity.y));
            rb.velocity = new Vector3(rb.velocity.x, jumpVelocity, rb.velocity.z);
        }
    }

    void HandleCrouch()
    {
        if (Input.GetKeyDown(KeyCode.LeftControl))
        {
            isCrouching = !isCrouching;
            UpdateInvisibility();

            if (!isCrouching) // Trying to stand up, check if there's room
            {
                Vector3 bottom = transform.position + Vector3.up * crouchHeight * 0.5f;
                Vector3 top = transform.position + Vector3.up * (height - 0.1f);
                float radius = capsule.radius * 0.9f;

                Collider[] hits = Physics.OverlapCapsule(bottom, top, radius, groundMask, QueryTriggerInteraction.Ignore);
                if (hits.Length > 0) // Something blocking head
                {
                    isCrouching = true;
                }
            }
        }

        float targetHeight = isCrouching ? crouchHeight : height;
        capsule.height = Mathf.Lerp(capsule.height, targetHeight, Time.deltaTime * timeToCrouch);
        capsule.center = Vector3.up * (capsule.height / 2f) + centerOffset;

        float targetCamHeight = targetHeight + cameraHeightOffset;
        Vector3 camPos = cameraTransform.localPosition;
        camPos.y = Mathf.Lerp(camPos.y, targetCamHeight, Time.deltaTime * timeToCrouch);
        cameraTransform.localPosition = camPos;
    }

    void HandleStamina()
    {
        if (!Input.GetKey(KeyCode.LeftShift) || moveInput.magnitude < 0.1f || !isGrounded)
        {
            stamina += staminaRecoveryPerSecond * Time.deltaTime;
        }

        stamina = Mathf.Clamp(stamina, 0f, maxStamina);
        canRun = stamina > 0f;
    }

    void HandleAim()
    {
        if (Input.GetMouseButtonDown(1)) // Right click
        {
            isAiming = true;
            originalSensitivity = mouseSensitivity;
            mouseSensitivity = aimSensitivity;
            currentForce = 0f;
        }

        if (Input.GetMouseButtonUp(1))
        {
            isAiming = false;
            mouseSensitivity = originalSensitivity;
            currentForce = 0f;
        }

        if (isAiming)
        {
            float mouseY = Input.GetAxis("Mouse Y");

            if (mouseY < 0)
            {
                currentForce += -mouseY * chargeSpeed * Time.deltaTime;
                currentForce = Mathf.Clamp(currentForce, 0f, maxForce);
            }

            if (Input.GetMouseButtonDown(0)) // Left click to shoot
            {
                ShootArrow(currentForce);
                currentForce = 0f;
                isAiming = false;
                mouseSensitivity = originalSensitivity;
            }
        }
    }

    void ShootArrow(float force)
    {
        if (arrowPrefab == null || shootPoint == null) return;

        GameObject arrow = Instantiate(arrowPrefab, shootPoint.position, shootPoint.rotation);
        Rigidbody arrowRb = arrow.GetComponent<Rigidbody>();

        if (arrowRb != null)
        {
            arrowRb.velocity = shootPoint.forward * force;
        }
    }

    void HandleInteract()
    {
        if (Input.GetKeyDown(interactKey))
        {
            Ray ray = new Ray(cameraTransform.position, cameraTransform.forward);
            RaycastHit hit;

            if (Physics.Raycast(ray, out hit, interactDistance, interactMask))
            {
                var climbable = hit.collider.GetComponent<IClimbable>();
                if (climbable != null)
                {
                    climbable.Interact(this);
                }
            }
        }
    }

    void OnTriggerEnter(Collider other)
    {
        if (IsInLayerMask(other.gameObject, canHide))
        {
            inCrouchHideZone = true;
            UpdateInvisibility();
        }

        if (IsInLayerMask(other.gameObject, autoHide))
        {
            inAutoHideZone = true;
            UpdateInvisibility();
        }
    }

    void OnTriggerExit(Collider other)
    {
        if (IsInLayerMask(other.gameObject, canHide))
        {
            inCrouchHideZone = false;
            UpdateInvisibility();
        }

        if (IsInLayerMask(other.gameObject, autoHide))
        {
            inAutoHideZone = false;
            UpdateInvisibility();
        }
    }

    void UpdateInvisibility()
    {
        bool shouldHide = (inCrouchHideZone && isCrouching) || inAutoHideZone;

        if (hidingEffect != null)
        {
            hidingEffect.SetActive(shouldHide);
        }
    }

    bool IsInLayerMask(GameObject obj, LayerMask mask)
    {
        return (mask.value & (1 << obj.layer)) != 0;
    }
    public void IniciarEscalada(Vector3 inicio, Vector3 fin, float velocidad)
    {
        escaladaInicio = inicio;
        escaladaFin = fin;
        velocidadEscalada = velocidad;
        progresoEscalada = 0f;
        enEscalada = true;

        // Desactivar física que moleste
        rb.velocity = Vector3.zero;
        rb.isKinematic = true;
    }
    void MovimientoEnEscalada()
    {
        progresoEscalada += Time.deltaTime * velocidadEscalada;
        transform.position = Vector3.Lerp(escaladaInicio, escaladaFin, progresoEscalada);

        if (progresoEscalada >= 1f)
        {
            enEscalada = false;
            rb.isKinematic = false;
        }
    }


    void OnDrawGizmosSelected()
    {
        if (groundCheck != null)
        {
            Gizmos.color = Color.green;
            Gizmos.DrawWireSphere(groundCheck.position, checkRadius + extraGroundDistance);
        }
    }
}
