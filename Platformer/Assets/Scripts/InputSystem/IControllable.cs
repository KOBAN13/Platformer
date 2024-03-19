using InputSystem;
using UnityEngine;

namespace Character
{
    public interface IControllable
    {
        void Move(Vector2 input);
        void Jump();
    }
}