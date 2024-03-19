using Character;
using UnityEngine;

namespace DefaultNamespace
{
    public class Player : MonoBehaviour, IControllable, IСhangeManagement
    {
        private IMovable _move;
        private IJumpable _jumpable;

        public void ChangeManagement(IMovable movable, IJumpable jumpable)
        {
            _move = movable;
            _jumpable = jumpable;
        }
        
        public void Move(Vector2 input)
        {
            _move.Move(input);
        }

        public void Jump()
        {
            _jumpable.Jump();
        }
    }
}