using CameraSettings;
using Character.Loader;
using Character.Physics;
using CharacterScripts.Bootstrap;
using Collider;
using DefaultNamespace;
using DefaultNamespace.Jump;
using DefaultNamespace.Movement;
using InputSystem;
using InputSystem.InputStrategy;
using Ui;
using UnityEngine;
using Zenject;

namespace Installers
{
    public class SceneInstallers : MonoInstaller
    {
        [field: SerializeField] public PlayerComponents PlayerComponents { get; private set; }
        [field: SerializeField] public Player Player { get; private set; }
        [field: SerializeField] public CharacterInputController CharacterInputController { get; private set; }
        [field: SerializeField] public InputSystemPC InputSystemPC { get; private set; }
        [field: SerializeField] public Bootstrap Bootstrap { get; private set; }
        [field: SerializeField] public NameLoaderResources NameLoaderResources { get; private set; }
        [field: SerializeField] public CameraSwitcher CameraSwitcher { get; private set; }
        [field: SerializeField] public BootstrapBaseMovement BootstrapBaseMovement { get; private set; }
        public override void InstallBindings()
        {
            BindPlayer();
            BindInput();
            BindPlayerParameters();
            BindGravity();
            BindLoader();
            BindMovements();
            BindBootstrup();
            BindCameraBlend();
            BindTimeManager();
        }

        private void BindTimeManager()
        {
            Container.BindInterfacesAndSelfTo<TimeManager>().AsSingle().NonLazy();
        }

        private void BindCameraBlend()
        {
            Container.Bind<CameraSwitcher>().FromInstance(CameraSwitcher).AsSingle().NonLazy();
            Container.Bind<MediatorCameraSwitcher>().AsSingle().NonLazy();
            Container.Bind<CollisionHandler>().AsSingle().NonLazy();
        }

        private void BindLoader()
        {
            Container.Bind<AddressableLoader>().AsSingle().NonLazy();
            Container.Bind<NameLoaderResources>().FromInstance(NameLoaderResources).AsSingle().NonLazy();
        }

        private void BindMovements()
        {
            Container.BindInterfacesTo<PlayerMovement>().AsSingle().NonLazy();
            Container.BindInterfacesTo<PlayerJump>().AsSingle().NonLazy();
        }

        private void BindBootstrup()
        {
            Container.Bind<Bootstrap>().FromInstance(Bootstrap).AsSingle().NonLazy();
            Container.Bind<BootstrapBaseMovement>().FromInstance(BootstrapBaseMovement).AsSingle().NonLazy();
        }

        private void BindInput()
        {
            Container.Bind<NewInputSystem>().To<NewInputSystem>().AsSingle();
            Container.BindInterfacesAndSelfTo<CharacterInputController>().FromInstance(CharacterInputController).AsCached().NonLazy();
            Container.BindInterfacesAndSelfTo<InputSystemPC>().FromInstance(InputSystemPC).AsSingle().NonLazy();
            Container.BindInterfacesAndSelfTo<StandardInput>().AsSingle().NonLazy();
            Container.BindInterfacesAndSelfTo<InputSlide>().AsSingle().NonLazy();
            Container.Bind<InputSwitcher>().AsSingle().NonLazy();
        }

        private void BindPlayer()
        {
            Container.BindInterfacesTo<Player>().FromInstance(Player).AsSingle().NonLazy();
        }

        private void BindPlayerParameters()
        {
            Container.Bind<PlayerComponents>().FromInstance(PlayerComponents).AsSingle().NonLazy();
        }

        private void BindGravity()
        {
            Container.BindInterfacesTo<Gravity>().AsSingle().NonLazy();
        }
    }
}