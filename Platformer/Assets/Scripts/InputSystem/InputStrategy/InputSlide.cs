using UnityEngine;
using Zenject;

namespace InputSystem.InputStrategy
{
    public class InputSlide : IMovementStrategy
    {
        private NewInputSystem _inputSystem;
        private int _sign;
        
        [Inject]
        public void Construct(NewInputSystem inputSystem) => _inputSystem = inputSystem;
        
        public void SetSignMovement(int sign) => _sign = sign;
        
        public Vector2 GetMovement()
        {
            return new Vector2(0f, _inputSystem.MoveSide.Move.ReadValue<float>() * _sign);
        }
    }
}




