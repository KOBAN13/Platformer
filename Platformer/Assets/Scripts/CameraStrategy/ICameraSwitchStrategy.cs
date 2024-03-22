using Cinemachine;
using InputSystem.InputStrategy;

namespace CameraSettings
{
    public interface ICameraSwitchStrategy
    {
        IMovementStrategy GetInputStrategy(CinemachineVirtualCamera camera);
    }
}