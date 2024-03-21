using DefaultNamespace;
using UnityEngine;
using Zenject;

namespace Character.Physics
{
    public class Gravity : IGravityForce, ITickable
    {
        private float _gravityForce = 9.8f;
        private PlayerComponents _playerComponents;
        
        public float GravityForce
        {
            get => _gravityForce;
            set
            {
                if (value >= 0)
                    _gravityForce = value;
            }
        }

        [Inject]
        public void Construct(PlayerComponents playerComponents) => _playerComponents = playerComponents;

        public void Tick()
        {
            GravityHandling();
        }
        
        private void GravityHandling()
        {
            if (!_playerComponents.CharacterController.isGrounded)
            {
                _playerComponents.TargetDirectionY -= _gravityForce * Time.deltaTime;
            }
        }
    }
}