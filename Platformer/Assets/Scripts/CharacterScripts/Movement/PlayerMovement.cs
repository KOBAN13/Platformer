using Character.Loader;
using DefaultNamespace.Idle;
using UnityEngine;
using Zenject;

namespace DefaultNamespace.Movement
{
    public class PlayerMovement : IMovable, ITickable
    {
        private PlayerComponents _playerComponents;
        private PlayerSettings _playerSettings;
        private AddressableLoader _addressableLoader;
        private NameLoaderResources _nameLoaderResources;
        private Vector3 _targetDirection;
        private Vector2 _input;
        private IVector _vector;
        private ITransformable _transformable;

        [Inject]
        public async void Construct(PlayerComponents playerComponents, AddressableLoader addressableLoader, 
            NameLoaderResources nameLoaderResources, IVector vector, ITransformable transform)
        {
            _playerComponents = playerComponents;
            _addressableLoader = addressableLoader;
            _nameLoaderResources = nameLoaderResources;
            _vector = vector;
            _transformable = transform;

            _playerSettings = await _addressableLoader.Loader<ScriptableObject>(_nameLoaderResources.LoadMovement) as PlayerSettings;
        }
        
        public void Move(Vector2 input)
        {
            _input = input;
            _vector.Input.Value = _input;
        }

        public void Tick()
        {
            PlayerMove();
            PlayerRotate();
        }

        private void PlayerRotate()
        {
            var targetDirection = new Vector3(-_input.y, 0f, _input.x); 
            if (!_playerComponents.CharacterController.isGrounded) return;
            if (!(Vector3.Angle(_transformable.Transform.forward, targetDirection) > 0)) return;
            
            var targetRotation = Quaternion.LookRotation(targetDirection);
            _transformable.Transform.rotation = Quaternion.RotateTowards(_transformable.Transform.rotation,
                targetRotation, _playerSettings.RotateSpeed * Time.deltaTime);
        }

        private void PlayerMove()
        {
            if(_playerSettings == null) return;
            _targetDirection.x = _playerSettings.Speed * -_input.y;
            _targetDirection.z = _playerSettings.Speed * _input.x;
            _targetDirection.y = _playerComponents.TargetDirectionY;
            _playerComponents.CharacterController.Move(_targetDirection * Time.deltaTime);
        }
    }
}