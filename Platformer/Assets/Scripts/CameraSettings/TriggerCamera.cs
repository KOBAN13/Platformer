using System.Collections.Generic;
using System.Linq;
using CameraSettings;
using DefaultNamespace;
using LogerEventCount;
using UniRx;
using UniRx.Triggers;
using UnityEngine;
using Zenject;
using Logger = LogerEventCount.Logger;

namespace Collider
{
    public class TriggerCamera : TriggerColliders, IUseDispose
    {
        [field: SerializeField] public Cameras Cameras { get; private set; }
        public CompositeDisposable Disposable { get; private set; } = new ();
        private Logger _logger;
        private readonly Dictionary<Cameras, ICameraSwitchStrategy> _camerasStrategy = new();
        private DiContainer _diContainer;

        [Inject]
        public void Construct(CollisionHandler collisionHandler, Logger logger, DiContainer container)
        {
            CollisionHandler = collisionHandler;
            Collider = GetComponent<UnityEngine.Collider>();
            _logger = logger;
            _diContainer = container;

            InitDictionary();
            TriggerEnter();
            _logger.UseDisposes.Add(this);
        }

        protected override void TriggerEnter()
        {
            Collider
                .OnTriggerEnterAsObservable()
                .Where(player => player.TryGetComponent<Player>(out var xPlayer))
                .Subscribe(_ =>
                {
                    CollisionHandler.TriggerCameraSwitcher
                        .Execute(_camerasStrategy
                            .SingleOrDefault(camera => camera.Key == Cameras).Value);
                })
                .AddTo(Disposable);
        }

        private T GetInContainer<T>() => _diContainer.Resolve<T>();
        
        private void InitDictionary()
        {
            _camerasStrategy.Add(Cameras.Above, GetInContainer<AboveCameraSwitcher>());
            _camerasStrategy.Add(Cameras.Slide, GetInContainer<SlideCameraSwitcher>());
            _camerasStrategy.Add(Cameras.Corner, GetInContainer<CornerCameraSwitcher>());
        }
    }
}