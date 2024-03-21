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

        [Inject]
        public void Construct(CollisionHandler collisionHandler, Logger logger)
        {
            CollisionHandler = collisionHandler;
            Collider = GetComponent<UnityEngine.Collider>();
            _logger = logger;
            
            TriggerEnter();
            _logger.UseDisposes.Add(this);
        }

        public void OnDisable()
        {
            Disposable.Clear();
        }

        protected override void TriggerEnter()
        {
            Collider
                .OnTriggerEnterAsObservable()
                .Where(player => player.TryGetComponent<Player>(out var xPlayer))
                .Subscribe(trigger =>
                {
                    CollisionHandler.TriggerCameraSwitcher.Execute(Cameras);
                })
                .AddTo(Disposable);
        }
    }
}