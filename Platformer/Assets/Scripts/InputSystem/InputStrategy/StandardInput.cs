using UnityEngine;
using Zenject;

namespace InputSystem.InputStrategy
{
    public class StandardInput : IMovementStrategy
    {
        private NewInputSystem _inputSystem;
        private int _sign;
        
        [Inject]
        public void Construct(NewInputSystem inputSystem) => _inputSystem = inputSystem;

        public void SetSignMovement(int sign) => _sign = sign;
        
        public Vector2 GetMovement()
        {
            var vectorMovement = _inputSystem.MoveUpCamera.Move.ReadValue<Vector2>();
            return new Vector2(vectorMovement.x * _sign, vectorMovement.y * _sign);
        }
    }
}