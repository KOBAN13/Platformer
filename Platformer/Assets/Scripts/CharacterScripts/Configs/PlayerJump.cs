using UnityEngine;

namespace DefaultNamespace.Configs
{
    [CreateAssetMenu(fileName = "Characters Configs", menuName = "CharactersConfigs / Jump Parameters")]
    public class PlayerJump : ScriptableObject
    {
        [field: SerializeField] public float JumpTime { get; private set; }
        [field: SerializeField] public float JumpHeight { get; private set; }
    }
}

