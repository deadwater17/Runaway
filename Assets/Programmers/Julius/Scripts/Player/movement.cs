using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Player : MonoBehaviour
{
    [Header("Camera")]
    // Camera Rotation
    public float mouseSensitivity = 2f;
    private float verticalRotation = 0f;
    private Transform cameraTransform;
    
    [Header("Movement")]
    private InventorySystem m_inventorySystem;        // Reference to the inventory
    // Ground Movement
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

    public float crouchYScale;
    public float startYScale;
    private bool isCrouching = false;

    [Header("Jumping")]
    // Jumpingi 
    public float jumpForce = 10f;
    public float fallMultiplier = 2.5f; // Multiplies gravity when falling down
    public float ascendMultiplier = 2f; // Multiplies gravity for ascending to peak of jump
    private bool isGrounded = true;
    public LayerMask groundLayer;
    private float groundCheckTimer = 0f;
    private float groundCheckDelay = 0.3f;
    private float playerHeight;
    private float raycastDistance;

    void Start()
    {
        rb = GetComponent<Rigidbody>();
        rb.freezeRotation = true;
        cameraTransform = Camera.main.transform;

        // Set the raycast to be slightly beneath the player's feet
        playerHeight = GetComponent<CapsuleCollider>().height * transform.localScale.y;
        raycastDistance = (playerHeight / 2) + 0.2f;

        startYScale = transform.localScale.y;

        // Hides the mouse
        Cursor.lockState = CursorLockMode.Locked;
        Cursor.visible = false;

    }

    void Update()
    {
        moveHorizontal = Input.GetAxisRaw("Horizontal");
        moveForward = Input.GetAxisRaw("Vertical");
        
        Crouching();
        MovementSpeed();

        RotateCamera();

        if (Input.GetButtonDown("Jump") && isGrounded)  //if player is on the ground and presses spacebar, it will jump
        {
            Jump();
        }

        // Checking when we're on the ground and keeping track of our ground check delay
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
        /*
        // Calculate movement direction and target velocity
        Vector3 movement = (transform.right * moveHorizontal + transform.forward * moveForward).normalized;
        Vector3 targetVelocity = movement * PlayerSpeed;

        // Apply movement to the Rigidbody
        Vector3 velocity = rb.velocity;
        velocity.x = targetVelocity.x;
        velocity.z = targetVelocity.z;
        rb.velocity = velocity;

        // If we aren't moving and are on the ground, stop velocity so we don't slide
        if (isGrounded && moveHorizontal == 0 && moveForward == 0)
        {
            rb.velocity = new Vector3(0, rb.velocity.y, 0);
        }

        currentSpeed = new Vector3(rb.velocity.x, 0, rb.velocity.z).magnitude;
        */

        // Calculate movement direction and target velocity
        Vector3 movement = (transform.right * moveHorizontal + transform.forward * moveForward).normalized;
        Vector3 targetVelocity = movement * PlayerSpeed;

        // If the player is grounded, apply the target velocity directly
        if (isGrounded)
        {
            Vector3 velocity = rb.velocity;
            velocity.x = targetVelocity.x;
            velocity.z = targetVelocity.z;
            rb.velocity = velocity;
        }
        else
        {
            // If the player is in the air, apply a movement force (to avoid sticking to walls)
            Vector3 velocity = rb.velocity;
            velocity.x = Mathf.Lerp(velocity.x, targetVelocity.x, Time.deltaTime * 5f); // Smooth transition
            velocity.z = Mathf.Lerp(velocity.z, targetVelocity.z, Time.deltaTime * 5f);
            rb.velocity = velocity;
        }

        // Prevent sliding on the ground when not moving
        if (isGrounded && moveHorizontal == 0 && moveForward == 0)
        {
            rb.velocity = new Vector3(0, rb.velocity.y, 0);
        }

        currentSpeed = new Vector3(rb.velocity.x, 0, rb.velocity.z).magnitude;
    }

    void RotateCamera()
    {
        float horizontalRotation = Input.GetAxis("Mouse X") * mouseSensitivity;
        transform.Rotate(0, horizontalRotation, 0);

        verticalRotation -= Input.GetAxis("Mouse Y") * mouseSensitivity;
        verticalRotation = Mathf.Clamp(verticalRotation, -90f, 90f);

        cameraTransform.localRotation = Quaternion.Euler(verticalRotation, 0, 0);
    }

    void MovementSpeed()        //changes speed based on player input
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
            isCrouching = !isCrouching; // Toggle the crouching state

            if (isCrouching)
            {
                transform.localScale = new Vector3(transform.localScale.x, crouchYScale, transform.localScale.z);
                rb.AddForce(Vector3.down * 5f, ForceMode.Impulse);
                Debug.Log("Crouching");
            }
            else
            {
                transform.localScale = new Vector3(transform.localScale.x, startYScale, transform.localScale.z);
                Debug.Log("Not Crouching");
            }
        }
    }

    void Jump()
    {
        isGrounded = false;
        groundCheckTimer = groundCheckDelay;
        rb.velocity = new Vector3(rb.velocity.x, jumpForce, rb.velocity.z); //initial burst for the jump
    }

    void ApplyJumpPhysics()         //realistic jump physics
    {
        if (rb.velocity.y < 0) 
        {
            //falling: Applies a fall multiplier to make falling faster
            rb.velocity += Vector3.up * Physics.gravity.y * fallMultiplier * Time.fixedDeltaTime;
        } // Rising
        else if (rb.velocity.y > 0)
        {
            //jumping: Change multiplier to make player reach peak of jump faster
            rb.velocity += Vector3.up * Physics.gravity.y * ascendMultiplier  * Time.fixedDeltaTime;
        }
    }
}