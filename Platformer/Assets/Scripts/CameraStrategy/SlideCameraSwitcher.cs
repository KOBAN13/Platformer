using System;
using CameraSettings.Interfaces;
using Cinemachine;
using InputSystem.InputStrategy;
using UniRx;
using Zenject;

namespace CameraSettings
{
    public class SlideCameraSwitcher : ICameraSwitchStrategy, ICamerasSlide
    {
        private InputSwitcher _inputSwitcher;
        private CameraSwitcher _cameraSwitcher;
        private CamerasSide _camerasSide;
        private const int NonInvertedControl = 1;
        private const int InvertedControl = -1;

        [Inject]
        public void Construct(InputSwitcher inputSystem, CameraSwitcher cameraSwitcher)
        {
            _inputSwitcher = inputSystem;
            _cameraSwitcher = cameraSwitcher;
        }
        
        public void SetCamerasCorner(CamerasSide camerasSide) => _camerasSide = camerasSide;

        public IMovementStrategy GetInputStrategy(CinemachineVirtualCamera camera)
        {
            return _camerasSide switch
            {
                CamerasSide.Left => SetCameraSwitcherAndMovementStrategy(_cameraSwitcher.SideLeft),
                CamerasSide.Right =>
                    SetCameraSwitcherAndMovementStrategy(_cameraSwitcher.SideRight),
                CamerasSide.GetUp => SetCameraSwitcherAndMovementStrategy(_cameraSwitcher.SideGetUp),
                CamerasSide.AtTheFront =>
                    SetCameraSwitcherAndMovementStrategy(_cameraSwitcher.SideAtTheFront),
                _ => throw new ArgumentOutOfRangeException()
            };
        }

        private IMovementStrategy SetCameraSwitcherAndMovementStrategy(CinemachineVirtualCamera camera)
        {
            _cameraSwitcher.CamSwitcher(camera, _cameraSwitcher.ReadOnlyListCams);
            return _inputSwitcher.GetInputSlide();
        }
    }
}