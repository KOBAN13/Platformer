namespace CameraSettings
{
    public interface IVisitCameraSwitch
    {
        void Visit(AboveCameraSwitcher aboveCameraSwitcher);
        void Visit(CornerCameraSwitcher cornerCameraSwitcher);
        void Visit(SlideCameraSwitcher slideCameraSwitcher);
    }
}