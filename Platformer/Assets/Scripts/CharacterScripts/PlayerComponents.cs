using UnityEngine;

namespace DefaultNamespace
{
    public class PlayerComponents : MonoBehaviour
    {
        [field: SerializeField] public CharacterController CharacterController { get; private set; }
        public float TargetDirectionY { get; set; }
    }
}