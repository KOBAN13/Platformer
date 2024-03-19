using UnityEngine;
using Zenject;

namespace InputSystem.InputStrategy
{
    public class StandardInput : IMovementStrategy
    {
        private NewInputSystem _inputSystem;
        
        [Inject]
        public void Construct(NewInputSystem inputSystem) => _inputSystem = inputSystem;
        
        public Vector2 GetMovement()
        {
            return _inputSystem.MoveUpCamera.Move.ReadValue<Vector2>();
        }
    }
}