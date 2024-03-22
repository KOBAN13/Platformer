using Cinemachine;
using InputSystem.InputStrategy;
using Zenject;

namespace CameraSettings
{
    public class AboveCameraSwitcher : ICameraSwitchStrategy
    {
        private InputSwitcher _inputSwitcher;
        private CameraSwitcher _cameraSwitcher;
        private const int NonInvertedControl = 1;

        [Inject]
        public void Construct(InputSwitcher inputSystem, CameraSwitcher cameraSwitcher)
        {
            _inputSwitcher = inputSystem;
            _cameraSwitcher = cameraSwitcher;
        }

        public IMovementStrategy GetInputStrategy(CinemachineVirtualCamera camera)
        {
            _cameraSwitcher.CamSwitcher(camera, _cameraSwitcher.ReadOnlyListCams);
            return _inputSwitcher.GetStandardInput(NonInvertedControl);
        }
    }
}