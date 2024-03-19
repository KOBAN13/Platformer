using System;
using UnityEngine;

namespace InputSystem
{
    public interface IInputSystem
    {
        Vector2 Move();
        void Jump();
    }
}