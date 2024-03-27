using UnityEngine;

namespace Animation
{
    public class AnimatorManager : MonoBehaviour
    {
        [field: SerializeField] public Animator AnimatorControllerBoy { get; private set; }
        private const string Jump = "isJump";
        private const string Move = "isMove";

        public void SetStateAnimatorJump(bool action) => AnimatorControllerBoy.SetBool(Jump, action);
        public void SetStateAnimatorMove(bool action) => AnimatorControllerBoy.SetBool(Move, action);
    }
}