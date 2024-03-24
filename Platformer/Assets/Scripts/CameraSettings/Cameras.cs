using System;

namespace CameraSettings
{
    [Serializable]
    public enum Cameras
    {
        Corner,
        Above,
        Slide
    }

    [Serializable]
    public enum CamerasCorner
    {
        LowerLeftCorner = 1,
        UpperLeftCorner = 2,
        UpperRightCorner = 3,
        LowerRightCorner = 4
    }

    [Serializable]
    public enum CamerasSide
    {
        Left,
        Right,
        GetUp,
        AtTheFront
    }
}