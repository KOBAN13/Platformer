using System;
using CameraSettings;
using CameraSettings.Interfaces;
using UniRx;
using UnityEngine;
using Zenject;

namespace InputSystem
{
    public class CamerasInputSystem : MonoBehaviour
    {
        private NewInputSystem _inputSystem;
        private ICurrentStrategy _mediatorCameraSwitcher;
        private int _idCams = 1;
        private const int CornerCamerasCount = 4;
        private const int FirstCornerCameras = 1;

        private Subject<Unit> _leftClickSubject = new();
        private Subject<Unit> _rightClickSubject = new();

        [Inject]
        public void Construct(NewInputSystem inputSystem, ICurrentStrategy mediatorCameraSwitcher)
        {
            _inputSystem = inputSystem;
            _mediatorCameraSwitcher = mediatorCameraSwitcher;
        }

        public void OnEnable()
        {
            _inputSystem.ChangeCamera.LeftCameras.performed += _ => _leftClickSubject.OnNext(Unit.Default);
            _inputSystem.ChangeCamera.RightCameras.performed += _ => _rightClickSubject.OnNext(Unit.Default);

            _leftClickSubject
                .ThrottleFirst(TimeSpan.FromSeconds(2))
                .Subscribe(_ => SwitchLeft());
            
            _rightClickSubject
                .ThrottleFirst(TimeSpan.FromSeconds(2))
                .Subscribe(_ => SwitchRight());
        }
        
        public void OnDisable()
        {
            _inputSystem.ChangeCamera.LeftCameras.performed -= _ => _leftClickSubject.OnNext(Unit.Default);
            _inputSystem.ChangeCamera.RightCameras.performed -= _ => _rightClickSubject.OnNext(Unit.Default);
        }

        private void SwitchLeft() => SwitchCamera(1);

        private void SwitchRight() => SwitchCamera(-1);

        private void SwitchCamera(int direction)
        {
            if (_mediatorCameraSwitcher.CurrentStrategy is not CornerCameraSwitcher switcher) 
                return;
    
            _idCams = (_idCams + direction - 1 + CornerCamerasCount) % CornerCamerasCount + 1;
            switcher.SetCamerasCorner(_idCams);
            _mediatorCameraSwitcher.CameraSwitch(switcher);
        }
    }
}