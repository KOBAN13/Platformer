using System;
using DefaultNamespace;
using LogerEventCount;
using UniRx;
using UniRx.Triggers;
using Zenject;

namespace Collider
{
    public class Currency : TriggerColliders, IUseDispose
    {
        public CompositeDisposable Disposable { get; private set; } = new ();
        private const int CountCurrency = 2;
        private Logger _logger;

        [Inject]
        public void Construct(CollisionHandler collisionHandler, Logger logger)
        {
            CollisionHandler = collisionHandler;
            Collider = GetComponent<UnityEngine.Collider>();
            _logger = logger;
            
            TriggerEnter();
            TriggerExit();
            _logger.UseDisposes.Add(this);
        }

        protected override void TriggerEnter()
        {
            Collider
                .OnTriggerEnterAsObservable()
                .Where(player => player.TryGetComponent<Player>(out var xPlayer))
                .Subscribe(trigger =>
                {
                    CollisionHandler.TriggerCurrency.Execute(CountCurrency);
                })
                .AddTo(Disposable);
        }

        private void TriggerExit()
        {
            Collider
                .OnTriggerExitAsObservable()
                .Where(player => player.TryGetComponent<Player>(out var xPlayer))
                .Subscribe(_ => gameObject.SetActive(false))
                .AddTo(Disposable);
        }

        private void OnDisable()
        {
            Disposable.Clear();
        }
    }
}