namespace CameraSettings.Interfaces
{
    public interface ICurrentStrategy
    {
        ICameraSwitchStrategy CurrentStrategy { get; }
        void CameraSwitch(ICameraSwitchStrategy cameraSwitchStrategy);
    }
}