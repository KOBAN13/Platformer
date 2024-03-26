using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Serialization;

namespace Levels
{
    public class Level : MonoBehaviour
    {
        [field: SerializeField] public CharacterController Player { get; private set; }
        public IReadOnlyList<Transform> ReadOnlyPoints { get; private set; }
        [field: SerializeField] private List<Transform> spawnPointPlayer;

        private void Start()
        {
            ReadOnlyPoints = spawnPointPlayer;
        }

        public void SetTransformNext(int index)
        {
            Player.enabled = false;
            Player.gameObject.transform.position = spawnPointPlayer[index].position;
            Player.enabled = true;
        }
    }
}