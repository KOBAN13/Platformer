using CameraSettings.Interfaces;
using Zenject;

namespace CameraSettings
{
    public class MediatorCamerasSlideSwitcher
    {
        private ICamerasSlide _camerasSlide;

        [Inject]
        public void Construct(ICamerasSlide camerasSlide) => _camerasSlide = camerasSlide;

        public void SwitchCamerasSlide(CamerasSide camerasSide) => _camerasSlide.SetCamerasCorner(camerasSide);

    }
}