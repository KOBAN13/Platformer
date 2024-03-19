using System;
using CameraSettings;
using UnityEngine;
using Zenject;

namespace Collider
{
    public class BootstrapTrigger : MonoBehaviour
    {
        private CollisionHandler _collisionHandler;

        [Inject]
        public void Construct(CollisionHandler collisionHandler)
        {
            _collisionHandler = collisionHandler ??
                                throw new ArgumentNullException($"{nameof(_collisionHandler)} is null fix this");
        }

        public void OnEnable()
        {
            _collisionHandler.TriggerCameraSwitcher += HandleCameraSwitcher;
        }

        public void OnDisable()
        {
            _collisionHandler.TriggerCameraSwitcher -= HandleCameraSwitcher;
        }

        private void HandleCameraSwitcher(Cameras cameras) => _collisionHandler.HandleCameraSwitcher(cameras);
    }
}