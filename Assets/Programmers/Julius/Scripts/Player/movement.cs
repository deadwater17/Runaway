using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Movement : MonoBehaviour
{
    [Header("Camera")]
    public Transform playerCamera;
    
    [Header("Movement")]
    private Rigidbody rb;
    public float PlayerSpeed = 0f;  
    public float currentSpeed;
    public float walkSpeed = 5f;
    public float sprintSpeed = 8f;
    public float crouchSpeed = 2f;
    public float crouchRunSpeed = 4f;
    private float moveHorizontal;
    private float moveForward;

    [Header("Crouching")]
    public float crouchYScale = 0.5f;
    private float startYScale;
    private bool isCrouching = false;

    [Header("Jumping")]
    public float jumpForce = 10f;
    public float fallMultiplier = 2.5f;
    public float ascendMultiplier = 2f;
    private bool isGrounded = true;
    public LayerMask groundLayer;
    private float groundCheckTimer = 0f;
    private float groundCheckDelay = 0.3f;
    private float playerHeight;
    private float raycastDistance;

    [Header("Slope")]
    public float maxSlopeAngle;
    private RaycastHit slopeHit;

    void Start()
    {
        rb = GetComponent<Rigidbody>();
        rb.freezeRotation = true;

        // Calculate player height for ground checks
        playerHeight = GetComponent<CapsuleCollider>().height * transform.localScale.y;
        raycastDistance = (playerHeight / 2) + 0.2f;

        startYScale = transform.localScale.y;
    }

    void Update()
    {
        moveHorizontal = Input.GetAxisRaw("Horizontal");
        moveForward = Input.GetAxisRaw("Vertical");

        Crouching();
        MovementSpeed();

        if (Input.GetButtonDown("Jump") && isGrounded)
        {
            Jump();
        }

        // Ground check logic
        if (!isGrounded && groundCheckTimer <= 0f)
        {
            Vector3 rayOrigin = transform.position + Vector3.up * 0.1f;
            isGrounded = Physics.Raycast(rayOrigin, Vector3.down, raycastDistance, groundLayer);
        }
        else
        {
            groundCheckTimer -= Time.deltaTime;
        }
    }

    void FixedUpdate()
    {
        MovePlayer();
        ApplyJumpPhysics();
    }

    void MovePlayer()
    {
        //Vector3 movement = (transform.right * moveHorizontal + transform.forward * moveForward).normalized;
        Vector3 moveDirection = (playerCamera.forward * moveForward + playerCamera.right * moveHorizontal).normalized;
        moveDirection.y = 0; 
        
        Vector3 targetVelocity = moveDirection * PlayerSpeed;

        if (isGrounded)
        {
            Vector3 velocity = rb.velocity;
            velocity.x = targetVelocity.x;
            velocity.z = targetVelocity.z;
            rb.velocity = velocity;
            
            // Apply slope movement only if on a slope
            if (OnSlope())
            {
                rb.AddForce(GetSlopeMovement(moveDirection) * PlayerSpeed, ForceMode.Force);
            }
        }
        else
        {
            Vector3 velocity = rb.velocity;
            velocity.x = Mathf.Lerp(velocity.x, targetVelocity.x, Time.deltaTime * 5f);
            velocity.z = Mathf.Lerp(velocity.z, targetVelocity.z, Time.deltaTime * 5f);
            rb.velocity = velocity;
        }

        if (isGrounded && moveHorizontal == 0 && moveForward == 0)
        {
            rb.velocity = new Vector3(0, rb.velocity.y, 0);
        }

        currentSpeed = new Vector3(rb.velocity.x, 0, rb.velocity.z).magnitude;
    }

    void MovementSpeed()
    {
        if (isCrouching && Input.GetKey(KeyCode.LeftShift))
        {
            PlayerSpeed = crouchRunSpeed;
        }
        else if (isCrouching)
        {
            PlayerSpeed = crouchSpeed;
        }
        else if (Input.GetKey(KeyCode.LeftShift))
        {
            PlayerSpeed = sprintSpeed;
        }
        else
        {
            PlayerSpeed = walkSpeed;
        }
    }

    void Crouching()
    {
        if (Input.GetKeyDown(KeyCode.LeftControl))
        {
            isCrouching = !isCrouching;

            if (isCrouching)
            {
                transform.localScale = new Vector3(transform.localScale.x, crouchYScale, transform.localScale.z);
                rb.AddForce(Vector3.down * 5f, ForceMode.Impulse);
            }
            else
            {
                transform.localScale = new Vector3(transform.localScale.x, startYScale, transform.localScale.z);
            }
        }
    }

    void Jump()
    {
        isGrounded = false;
        groundCheckTimer = groundCheckDelay;
        rb.velocity = new Vector3(rb.velocity.x, jumpForce, rb.velocity.z);
    }

    void ApplyJumpPhysics()
    {
        if (rb.velocity.y < 0)
        {
            rb.velocity += Vector3.up * Physics.gravity.y * fallMultiplier * Time.fixedDeltaTime;
        }
        else if (rb.velocity.y > 0)
        {
            rb.velocity += Vector3.up * Physics.gravity.y * ascendMultiplier * Time.fixedDeltaTime;
        }
    }
    
    private bool OnSlope()
    {
        float currentHeight = GetComponent<CapsuleCollider>().height * transform.localScale.y; // Adjust for crouching
        float rayDistance = (currentHeight / 2) + 0.3f; // Adjust raycast distance based on current height

        if (Physics.Raycast(transform.position, Vector3.down, out slopeHit, rayDistance))
        {
            float angle = Vector3.Angle(Vector3.up, slopeHit.normal);
            return angle < maxSlopeAngle && angle > 0;
        }
        return false;
    }
    private Vector3 GetSlopeMovement(Vector3 movement)
    {
        return Vector3.ProjectOnPlane(movement, slopeHit.normal).normalized;
    }
}
