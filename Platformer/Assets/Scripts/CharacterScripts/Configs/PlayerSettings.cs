using DefaultNamespace.Configs;
using UnityEngine;

[CreateAssetMenu(fileName = "Characters Configs", menuName = "CharactersConfigs / MovementParameters")]
public class PlayerSettings : ScriptableObject
{
    [field: SerializeField] public float Speed { get; private set; }
    [field: SerializeField] public float RotateSpeed { get; private set; }
    [field: SerializeField] public PlayerJump PlayerJump { get; private set; }
}

