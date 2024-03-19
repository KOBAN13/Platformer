using System;
using CameraSettings;
using DefaultNamespace;
using UniRx;
using UniRx.Triggers;
using UnityEngine;
using Zenject;

namespace Collider
{
    public class TriggerCamera : TriggerColliders
    {
        [field: SerializeField] public Cameras Cameras { get; private set; }
        private CompositeDisposable _compositeDisposableLogger = new();

        [Inject]
        public void Construct(CollisionHandler collisionHandler)
        {
            CollisionHandler = collisionHandler;
            Collider = GetComponent<UnityEngine.Collider>();
            
            TriggerEnter();
            StartLogEventCount();
        }

        public void OnDisable()
        {
            _compositeDisposableLogger.Clear();
            CompositeDisposableTrigger.Clear();
        }

        private void StartLogEventCount()
        {
            Observable
                .Timer(TimeSpan.FromSeconds(5f))
                .Repeat()
                .Subscribe(_ =>
                {
                    Debug.LogWarning($"Count subscribe events in logger: {_compositeDisposableLogger.Count}");
                    Debug.LogWarning($"Count subscribe events in trigger: {CompositeDisposableTrigger.Count}");
                })
                .AddTo(_compositeDisposableLogger);
        }


        protected override void TriggerEnter()
        {
            Collider
                .OnTriggerEnterAsObservable()
                .Where(player => player.TryGetComponent<Player>(out var xPlayer))
                .Subscribe(trigger =>
                {
                    CollisionHandler.NotifyCameraSwitcher(Cameras);
                })
                .AddTo(CompositeDisposableTrigger);
        }
    }
}