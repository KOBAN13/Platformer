using CameraSettings.Interfaces;
using Collider;
using DefaultNamespace;
using LogerEventCount;
using UniRx;
using UniRx.Triggers;
using UnityEngine;
using Zenject;
using Logger = LogerEventCount.Logger;

namespace CameraSettings
{
    public class TriggerSlideCameras : MonoBehaviour, IUseDispose
    {
        [field: SerializeField] public CamerasSide CamerasSide { get; private set; }
        public CompositeDisposable Disposable { get; } = new();
        private Logger _logger;
        private UnityEngine.Collider _collider;
        private CollisionHandler _collisionHandler;

        [Inject]
        public void Construct(Logger logger, CollisionHandler collisionHandler)
        {
            _collider = GetComponent<UnityEngine.Collider>();
            _logger = logger;
            _collisionHandler = collisionHandler;
            _logger.UseDisposes.Add(this);
            TriggerEnter();
        }

        private void TriggerEnter()
        {
            _collider
                .OnTriggerEnterAsObservable()
                .Where(x => x.TryGetComponent<Player>(out var player))
                .Subscribe(_ => _collisionHandler.TriggerCamerasSide.Execute(CamerasSide))
                .AddTo(Disposable);
        }
    }
}