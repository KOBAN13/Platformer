using CameraSettings;
using Character.Loader;
using Character.Physics;
using CharacterScripts.Bootstrap;
using Collider;
using Dead;
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
        [field: SerializeField] public LogerEventCount.Logger Logger { get; private set; }
        [field: SerializeField] public CollisionHandler CollisionHandler { get; private set; }
        [field: SerializeField] public RestartGame RestartGame { get; private set; }
        [field: SerializeField] public CamerasInputSystem CamerasInputSystem { get; private set; }
        [field: SerializeField] public CamerasRotate CamerasRotate { get; private set; }
        [field: SerializeField] public DarkeningScreen DarkeningScreen { get; private set; }
        [field: SerializeField] public StartGame.StartGame StartGame { get; private set; }
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
            BindMediator();
            BindLogger();
            BindRestartGame();
            BindCamerasStrategy();
            BindCamerasRotate();
            BindDarkeningScreen();
            BindSkipStart();
        }

        private void BindSkipStart()
        {
            Container.BindInterfacesAndSelfTo<StartGame.StartGame>().FromInstance(StartGame).AsSingle().NonLazy();
        }

        private void BindDarkeningScreen()
        {
            Container.BindInterfacesAndSelfTo<DarkeningScreen>().FromInstance(DarkeningScreen).AsSingle().NonLazy();
        }
        
        private void BindCamerasRotate()
        {
            Container.BindInterfacesAndSelfTo<CamerasRotate>().FromInstance(CamerasRotate).AsSingle().NonLazy();
        }

        private void BindCamerasStrategy()
        {
            Container.BindInterfacesAndSelfTo<AboveCameraSwitcher>().AsSingle().NonLazy();
            Container.BindInterfacesAndSelfTo<SlideCameraSwitcher>().AsSingle().NonLazy();
            Container.BindInterfacesAndSelfTo<CornerCameraSwitcher>().AsSingle().NonLazy();
        }

        private void BindRestartGame()
        {
            Container.BindInterfacesAndSelfTo<RestartGame>().FromInstance(RestartGame).AsSingle().NonLazy();
        }

        private void BindLogger()
        {
            Container.Bind<LogerEventCount.Logger>().FromInstance(Logger).AsSingle().NonLazy();
        }

        private void BindMediator()
        {
            Container.BindInterfacesAndSelfTo<MediatorCameraSwitcher>().AsSingle().NonLazy();
            Container.Bind<MediatorCurrency>().AsSingle().NonLazy();
            Container.Bind<MediatorAbyss>().AsSingle().NonLazy();
            Container.Bind<MediatorCamerasSlideSwitcher>().AsSingle().NonLazy();
        }

        private void BindTimeManager()
        {
            Container.BindInterfacesAndSelfTo<TimeManager>().AsSingle().NonLazy();
        }

        private void BindCameraBlend()
        {
            Container.Bind<CameraSwitcher>().FromInstance(CameraSwitcher).AsSingle().NonLazy();
            Container.Bind<CollisionHandler>().FromInstance(CollisionHandler).AsSingle().NonLazy();
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
            Container.Bind<CamerasInputSystem>().FromInstance(CamerasInputSystem).AsSingle().NonLazy();
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