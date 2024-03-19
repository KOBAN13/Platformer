using System;
using Character.Loader;
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

        [Inject]
        public async void Construct(PlayerComponents playerComponents, AddressableLoader addressableLoader, NameLoaderResources nameLoaderResources)
        {
            _playerComponents = playerComponents;
            _addressableLoader = addressableLoader;
            _nameLoaderResources = nameLoaderResources;

            _playerSettings = await _addressableLoader.Loader<ScriptableObject>(_nameLoaderResources.LoadMovement) as PlayerSettings;
        }
        
        public void Move(Vector2 input)
        {
            _input = input;
        }

        public void Tick()
        {
            if(_playerSettings == null) return;
            _targetDirection.x = _playerSettings.Speed * -_input.y;
            _targetDirection.z = _playerSettings.Speed * _input.x;
            _targetDirection.y = _playerComponents.TargetDirectionY;
            _playerComponents.CharacterController.Move(_targetDirection * Time.deltaTime);
        }
    }
}