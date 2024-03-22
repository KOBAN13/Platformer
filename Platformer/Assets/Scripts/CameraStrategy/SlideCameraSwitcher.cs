﻿using Cinemachine;
using InputSystem.InputStrategy;
using Zenject;

namespace CameraSettings
{
    public class SlideCameraSwitcher : ICameraSwitchStrategy
    {
        private InputSwitcher _inputSwitcher;
        private CameraSwitcher _cameraSwitcher;

        [Inject]
        public void Construct(InputSwitcher inputSystem, CameraSwitcher cameraSwitcher)
        {
            _inputSwitcher = inputSystem;
            _cameraSwitcher = cameraSwitcher;
        }

        public IMovementStrategy GetInputStrategy(CinemachineVirtualCamera camera)
        {
            _cameraSwitcher.CamSwitcher(camera, _cameraSwitcher.ReadOnlyListCams);
            return _inputSwitcher.GetInputSlide();
        }
    }
}