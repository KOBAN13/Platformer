using UnityEngine;
using Zenject;

namespace InputSystem.InputStrategy
{
    public class InputSlide : IMovementStrategy
    {
        private NewInputSystem _inputSystem;
        
        [Inject]
        public void Construct(NewInputSystem inputSystem) => _inputSystem = inputSystem;
        
        public Vector2 GetMovement()
        {
            return new Vector2(0f, _inputSystem.MoveSide.Move.ReadValue<float>());
        }
    }
}




