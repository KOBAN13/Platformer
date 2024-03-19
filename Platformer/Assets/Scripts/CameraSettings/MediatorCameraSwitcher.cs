using System;
using InputSystem.InputStrategy;
using UnityEngine;
using Zenject;

namespace CameraSettings
{
    public class MediatorCameraSwitcher
    {
        private CameraSwitcher _cameraSwitcher;
        private ISetMovementStrategy _movementStrategy;
        private InputSwitcher _inputSwitcher;

        [Inject]
        public void Construct(CameraSwitcher cameraSwitcher, ISetMovementStrategy movementStrategy, InputSwitcher inputSwitcher)
        { 
            _cameraSwitcher = cameraSwitcher;
            _movementStrategy = movementStrategy;
            _inputSwitcher = inputSwitcher;
        }
        
        public void CameraSwitch(Cameras camera)
        {
            Debug.Log(camera);
            Debug.Log(_movementStrategy);
            switch (camera)
            {
                case Cameras.Above: _cameraSwitcher.CamSwitcher(_cameraSwitcher.CamAbove);
                    _movementStrategy.SetMovementStrategy(_inputSwitcher.GetStandardInput());
                    break;
                case Cameras.Corner :
                    _cameraSwitcher.CamSwitcher(_cameraSwitcher.Cam45Corner);
                    _movementStrategy.SetMovementStrategy(_inputSwitcher.GetStandardInput());
                    break;
                case Cameras.Slide : _cameraSwitcher.CamSwitcher(_cameraSwitcher.CamSide);
                    _movementStrategy.SetMovementStrategy(_inputSwitcher.GetInputSlide());
                    break;
                default:
                    throw new ArgumentOutOfRangeException(nameof(camera), camera, null);
            }
        }
    }
}