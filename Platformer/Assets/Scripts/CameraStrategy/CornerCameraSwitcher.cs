using System;
using CameraSettings.Interfaces;
using Cinemachine;
using InputSystem.InputStrategy;
using Zenject;

namespace CameraSettings
{
    public class  CornerCameraSwitcher : ICameraSwitchStrategy, ICamerasCorner
    {
        private InputSwitcher _inputSwitcher;
        private CameraSwitcher _cameraSwitcher;
        private CamerasCorner _camerasCorner = CamerasCorner.LowerLeftCorner;
        private const int NonInvertedControl = 1;
        private const int InvertedControl = -1;

        [Inject]
        public void Construct(InputSwitcher inputSystem, CameraSwitcher cameraSwitcher)
        {
            _inputSwitcher = inputSystem;
            _cameraSwitcher = cameraSwitcher;
        }

        public void SetCamerasCorner(int idCam) => _camerasCorner = (CamerasCorner)idCam;

        public IMovementStrategy GetInputStrategy(CinemachineVirtualCamera camera)
        {
            return _camerasCorner switch
            {
                CamerasCorner.LowerLeftCorner => SetCameraSwitcherAndMovementStrategy(_cameraSwitcher.LowerLeftCorner, NonInvertedControl),
                CamerasCorner.LowerRightCorner =>
                    SetCameraSwitcherAndMovementStrategy(_cameraSwitcher.LowerRightCorner, NonInvertedControl),
                CamerasCorner.UpperLeftCorner => SetCameraSwitcherAndMovementStrategy(_cameraSwitcher.UpperLeftCorner, NonInvertedControl),
                CamerasCorner.UpperRightCorner =>
                    SetCameraSwitcherAndMovementStrategy(_cameraSwitcher.UpperRightCorner, NonInvertedControl),
                _ => throw new ArgumentOutOfRangeException()
            };
        }

        private IMovementStrategy SetCameraSwitcherAndMovementStrategy(CinemachineVirtualCamera camera, int sign)
        {
            _cameraSwitcher.CamSwitcher(camera, _cameraSwitcher.ReadOnlyListCamsMouseClick);
            return _inputSwitcher.GetStandardInput(sign);
        }
    }
}