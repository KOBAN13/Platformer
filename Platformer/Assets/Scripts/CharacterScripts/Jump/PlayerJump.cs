using System;
using Character.Loader;
using UnityEngine;
using Zenject;

namespace DefaultNamespace.Jump
{
    public class PlayerJump : IJumpable, ITickable
    {
        private PlayerComponents _playerComponents;
        private IGravityForce _gravityForce;
        private PlayerSettings _playerSettings;
        private AddressableLoader _addressableLoader;
        private NameLoaderResources _nameLoaderResources;
        private float _jumpVelocity;
        private float _coyoteTimeCounter;
        private float _jumpBufferingCounter;
        
        [Inject]
        public async void Construct(PlayerComponents playerSettings, IGravityForce gravity,
            NameLoaderResources nameLoaderResources, AddressableLoader addressableLoader)
        {
            _playerComponents = playerSettings ? playerSettings : throw new ArgumentNullException();
            _gravityForce = gravity ?? throw new ArgumentNullException();
            _nameLoaderResources = nameLoaderResources;
            _addressableLoader = addressableLoader;

            _playerSettings = await _addressableLoader.Loader<ScriptableObject>(_nameLoaderResources.LoadMovement) as PlayerSettings;
            SetJumpVelocity();
        }

        public void Jump()
        {
            if (_coyoteTimeCounter > 0f)
            {
                _playerComponents.TargetDirectionY = _jumpVelocity;
            }
            _coyoteTimeCounter = 0f;
        }

        public void Tick()
        {
            CalculatingCoyoteEffect();
        }

        private void CalculatingCoyoteEffect()
        {
            if (_playerComponents.CharacterController.isGrounded)
                _coyoteTimeCounter = _playerSettings.PlayerJump.CoyoteTime;
            
            _coyoteTimeCounter -= Time.deltaTime;
        }
        
        private void SetJumpVelocity()
        {
            var maxHeightTime = _playerSettings.PlayerJump.JumpTime / 2;
            _gravityForce.GravityForce = 2 * _playerSettings.PlayerJump.JumpHeight / Mathf.Pow(maxHeightTime, 2);
            _jumpVelocity = 2 * _playerSettings.PlayerJump.JumpTime / maxHeightTime;
        }
    }
}