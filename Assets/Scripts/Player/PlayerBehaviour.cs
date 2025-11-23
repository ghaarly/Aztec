using UnityEngine;
using UnityEngine.SceneManagement;
using UnityEngine.UI;

public class PlayerBehaviour : MonoBehaviour
{
    [Header("Vida")]
    [SerializeField] private int maxLife;
    [SerializeField] private Image lifeImage;
    [SerializeField] private int currentLife;
    [SerializeField] private string deathScene;

    [Header("Movimiento y Física")]
    public float speed = 4f;
    public float runSpeed = 10f;
    public float crouchSpeed = 0.5f;
    public float jumpHeight = 1.2f;
    public LayerMask groundMask = ~0;
    public Transform groundCheck;
    public float checkRadius = 0.25f;
    public float extraGroundDistance = 0.05f;
    private float originalSpeed;
    private float originalRunSpeed;
    private float originalMouseSensitivity;
    private bool inSlowZone = false;

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

    [Header("Ocultamiento")]
    public LayerMask canHide;
    public LayerMask autoHide;
    public GameObject hidingEffect;
    private bool inCrouchHideZone = false;
    private bool inAutoHideZone = false;
    public bool IsCrouching => isCrouching;
    public bool IsHidden => (inCrouchHideZone && isCrouching) || inAutoHideZone;
    private int crouchHideZoneCount = 0;
    private int autoHideZoneCount = 0;


    [Header("Interacción")]
    public KeyCode interactKey = KeyCode.E;
    public float interactDistance = 3f;
    public LayerMask interactMask = ~0;

    [Header("Escalada")]
    private bool enEscalada = false;
    private Vector3 escaladaInicio;
    private Vector3 escaladaFin;
    private float velocidadEscalada = 2f;
    private float progresoEscalada = 0f;


    private Rigidbody rb;
    private CapsuleCollider capsule;
    private Vector3 moveInput;
    private bool isCrouching = false;
    private bool isGrounded = false;
    private float yaw = 0f;
    private float pitch = 0f;
    private float stamina;
    private bool canRun = true;

    void Start()
    {
        rb = GetComponent<Rigidbody>();
        capsule = GetComponent<CapsuleCollider>();
        stamina = maxStamina;
        currentLife = maxLife;

        if (lifeImage != null)
        {
            lifeImage.fillAmount = 1f;
        }
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
        UpdateHealthBar();
        HandleCamera();
        CheckGround();
        HandleMovement();
        HandleJump();
        HandleCrouch();
        HandleStamina();
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
    
    private float walktimer = 0f;

    void HandleMovement()
    {
        float h = Input.GetAxis("Horizontal");
        float v = Input.GetAxis("Vertical");
        moveInput = transform.right * h + transform.forward * v;
        if(h != 0 || v != 0)
        {
            if (walktimer < 0.5f) walktimer += Time.deltaTime;
            else if (walktimer >= 0.5f)
            {
                playstepsound();
                walktimer = 0f;
            }
        }
       
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

            if (!isCrouching)
            {
                Vector3 bottom = transform.position + Vector3.up * crouchHeight * 0.5f;
                Vector3 top = transform.position + Vector3.up * (height - 0.1f);
                float radius = capsule.radius * 0.9f;

                Collider[] hits = Physics.OverlapCapsule(bottom, top, radius, groundMask, QueryTriggerInteraction.Ignore);
                if (hits.Length > 0)
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
    public void EnterSlowZone(float speedMultiplier, float sensitivityLoss)
    {
        if (inSlowZone) return;

        inSlowZone = true;

        originalSpeed = speed;
        originalRunSpeed = runSpeed;
        originalMouseSensitivity = mouseSensitivity;
        speed *= speedMultiplier;
        runSpeed *= speedMultiplier;
        mouseSensitivity -= sensitivityLoss;

        mouseSensitivity = Mathf.Max(1f, mouseSensitivity);
    }
    public void ExitSlowZone()
    {
        if (!inSlowZone) return;
        inSlowZone = false;

        speed = originalSpeed;
        runSpeed = originalRunSpeed;
        mouseSensitivity = originalMouseSensitivity;
    }
    void OnTriggerEnter(Collider other)
    {
        if (IsInLayerMask(other.gameObject, canHide))
        {
            crouchHideZoneCount++;
            UpdateInvisibility();
        }

        if (IsInLayerMask(other.gameObject, autoHide))
        {
            autoHideZoneCount++;
            UpdateInvisibility();
        }
    }
    void OnTriggerExit(Collider other)
    {
        if (IsInLayerMask(other.gameObject, canHide))
        {
            crouchHideZoneCount = Mathf.Max(0, crouchHideZoneCount - 1);
            UpdateInvisibility();
        }

        if (IsInLayerMask(other.gameObject, autoHide))
        {
            autoHideZoneCount = Mathf.Max(0, autoHideZoneCount - 1);
            UpdateInvisibility();
        }
    }

    void UpdateInvisibility()
    {
        bool inCrouchHide = (crouchHideZoneCount > 0 && isCrouching);
        bool inAutoHide = autoHideZoneCount > 0;

        bool shouldHide = inCrouchHide || inAutoHide;

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
    public void TakeDamage(int damage)
    {
        Debug.Log("Recibio daño: " + damage);
        currentLife -= damage;
        currentLife = Mathf.Clamp(currentLife, 0, maxLife);
        UpdateHealthBar();

        if (currentLife <= 0)
        {
            Debug.Log("Se murió");
            SceneManager.LoadScene(deathScene);
        }
    }
    void UpdateHealthBar()
    {
        float fillAmount = (float)currentLife / maxLife;
        lifeImage.fillAmount = fillAmount;
    }
    void OnDrawGizmosSelected()
    {
        if (groundCheck != null)
        {
            Gizmos.color = Color.green;
            Gizmos.DrawWireSphere(groundCheck.position, checkRadius + extraGroundDistance);
        }
    }

    public AudioSource source;
    public AudioClip[]stepssounds = new AudioClip[0];
    public AudioClip[]SlowStepsounds = new AudioClip[0];
    public void playstepsound()
    {
        if (inSlowZone)
        {
            source.PlayOneShot(SlowStepsounds[Random.Range(0, SlowStepsounds.Length)]);
        }
        else
        {
            source.PlayOneShot(stepssounds[Random.Range(0, stepssounds.Length)]);
        }
    }
}

