using System;
using InputSystem;
using InputSystem.InputStrategy;
using UnityEngine;
using UnityEngine.InputSystem;
using Zenject;

public class InputSystemPC : MonoBehaviour, IInputSystem, ISetMovementStrategy
{
    private NewInputSystem _input;
    private IMovementStrategy _movementStrategy;
    private Vector2 _axis;
    private IUseInputSystem _classUseInputSystem;

    [Inject]
    public void Construct(NewInputSystem input, CharacterInputController inputSystemUse)
    {
        _input = input ?? throw new ArgumentNullException($"{nameof(input)} is null");
        _classUseInputSystem = inputSystemUse ? inputSystemUse : throw new ArgumentNullException($"{nameof(inputSystemUse)} is null");
        _input.Enable();
    }

    public Vector2 Move() => _axis;

    public void Jump()
    {
        _classUseInputSystem.InvokeJump();
    }

    public void OnEnable()
    {
        _input.Jump.Jump.performed += Jump;
    }

    public void OnDisable()
    {
        _input.Jump.Jump.performed -= Jump;
    }

    public void SetMovementStrategy(IMovementStrategy movementStrategy) => _movementStrategy = movementStrategy;
    
    private void Movable()
    {
        if (_movementStrategy == null)
        {
            Debug.LogException(new NullReferenceException($"{nameof(_movementStrategy)} is null fix"));
            return;
        }

        _axis = _movementStrategy.GetMovement();
        _classUseInputSystem.InvokeMove();
    }

    private void Update()
    {
        Movable();
    }

    private void Jump(InputAction.CallbackContext obj)
    {
        Jump();
        _classUseInputSystem.InvokeJump();
    }
}
