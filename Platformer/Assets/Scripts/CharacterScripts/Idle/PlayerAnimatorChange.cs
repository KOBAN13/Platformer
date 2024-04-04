using Animation;
using InputSystem;
using UniRx;
using UnityEngine;
using Zenject;

namespace DefaultNamespace.Idle
{
    public class PlayerAnimatorChange : IVector, ITickable
    {
        private PlayerComponents _playerComponents;
        private AnimatorManager _animatorManager;
        private CharacterInputController _inputController;
        private CompositeDisposable _compositeDisposable = new();
        public Vector2ReactiveProperty Input { get; } = new();

        [Inject]
        public void Construct(PlayerComponents playerComponents, AnimatorManager animatorManager, CharacterInputController characterInputController)
        {
            _playerComponents = playerComponents;
            _animatorManager = animatorManager;
            _inputController = characterInputController;


            SubscribeOnChange();
        }

        public void Tick()
        {
             if(_playerComponents.CharacterController.isGrounded) _animatorManager.SetStateAnimatorJump(false);
        }

        private void SubscribeOnChange()
        {
            _inputController.OnJumpCharacter += () =>
            {
                _animatorManager.SetStateAnimatorJump(true);//тоже такое себе решение желательно стейт машина, но опять же времени на нее нету
            };
            
            Input
                .Subscribe(vector => { _animatorManager.SetStateAnimatorMove(vector != Vector2.zero); })
                .AddTo(_compositeDisposable);
        }

        private void UnSubscribeOnChange()
        {
            _inputController.OnJumpCharacter -= () =>
            {
                _animatorManager.SetStateAnimatorJump(true); //тоже такое себе решение желательно стейт машина, но опять же времени на нее нету
            };
        }

        ~PlayerAnimatorChange()
        {
            UnSubscribeOnChange();
            _compositeDisposable.Clear();
        }
    }
}