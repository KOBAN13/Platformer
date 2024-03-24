using CameraSettings.Interfaces;
using Cinemachine;
using UnityEngine;
using Vector2 = UnityEngine.Vector2;

namespace CameraSettings
{
    public class CamerasRotate : MonoBehaviour, IRotate
    {
        [field: SerializeField] public CinemachineBrain LiveCamera { get; private set; }

        [field: Header("Vertical Angle")]
        [field: SerializeField, Range(0, 30)] public float VerticalMaxAngle { get; private set; }
        [field: SerializeField, Range(-30, 0)] public float VerticalMinAngle { get; private set; }
        
        [field: Header("Horizontal Angle")]
        [field: SerializeField, Range(0, 30)] public float HorizontalMaxAngle { get; private set; }
        [field: SerializeField, Range(-30, 0)] public float HorizontalMinAngle { get; private set; }
        
        [field: Header("Camera Settings")]
        [field: SerializeField] public float Sensitivity { get; private set; } = 1f;
        [field: SerializeField] public float SmoothSpeed { get; private set; }

        private float _vertical;
        private float _horizontal;

        public void Rotate(Vector2 rotateVector)
        {
            _horizontal += Sensitivity * rotateVector.x;
            var currentEulerAngles = LiveCamera.ActiveVirtualCamera.Follow.localEulerAngles.y + _horizontal;
            
            currentEulerAngles = Mathf.Clamp(currentEulerAngles, VerticalMinAngle, VerticalMaxAngle);

            var targetRotation = Quaternion.Euler(0, currentEulerAngles, 0f);

            LiveCamera.ActiveVirtualCamera.Follow.localRotation = Quaternion.Lerp(
                LiveCamera.ActiveVirtualCamera.Follow.localRotation, targetRotation, SmoothSpeed * Time.deltaTime);
        }
        
    }
}