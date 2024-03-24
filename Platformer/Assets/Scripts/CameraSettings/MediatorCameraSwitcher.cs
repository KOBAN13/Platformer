using CameraSettings.Interfaces;
using InputSystem.InputStrategy;
using UnityEngine;
using Zenject;

namespace CameraSettings
{
    public class MediatorCameraSwitcher : IVisitCameraSwitch, ICurrentStrategy
    {
        public ICameraSwitchStrategy CurrentStrategy { get; private set; }
        
        private CameraSwitcher _cameraSwitcher;
        private ISetMovementStrategy _movementStrategy;

        [Inject]
        public void Construct(CameraSwitcher cameraSwitcher, ISetMovementStrategy movementStrategy)
        { 
            _cameraSwitcher = cameraSwitcher;
            _movementStrategy = movementStrategy;
        }
        
        public void CameraSwitch(ICameraSwitchStrategy cameraSwitchStrategy)
        {
            Debug.Log(cameraSwitchStrategy);
            Debug.Log(_movementStrategy);
            Visit((dynamic)cameraSwitchStrategy);
            CurrentStrategy = cameraSwitchStrategy;
        }

        public void Visit(AboveCameraSwitcher aboveCameraSwitcher)
        {
            _movementStrategy.SetMovementStrategy(aboveCameraSwitcher.GetInputStrategy(_cameraSwitcher.CamAbove));
        }

        public void Visit(CornerCameraSwitcher cornerCameraSwitcher)
        {
            _movementStrategy.SetMovementStrategy(cornerCameraSwitcher.GetInputStrategy(null));
        }

        public void Visit(SlideCameraSwitcher slideCameraSwitcher)
        {
            _movementStrategy.SetMovementStrategy(slideCameraSwitcher.GetInputStrategy(null));
        }
    }
}