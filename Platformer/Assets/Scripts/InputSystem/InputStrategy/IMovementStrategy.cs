using Vector2 = UnityEngine.Vector2;

namespace InputSystem.InputStrategy
{
    public interface IMovementStrategy
    {
        Vector2 GetMovement();
    }
}