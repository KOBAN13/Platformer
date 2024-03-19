using System;
using DefaultNamespace;
using UnityEngine;
using Zenject;

namespace CharacterScripts.Bootstrap
{
    public class Bootstrap : MonoBehaviour
    {
        [field: SerializeField] public Player Player { get; private set; }
        private IMovable _movable;
        private IJumpable _jumpable;

        [Inject]
        public void Construct(IMovable movable, IJumpable jumpable)
        {
            _movable = movable;
            _jumpable = jumpable;
        }

        private void Start()
        {
            Player.ChangeManagement(_movable, _jumpable);
        }
    }
}