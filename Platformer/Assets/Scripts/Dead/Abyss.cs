using Collider;
using LogerEventCount;
using UniRx;
using UniRx.Triggers;
using Zenject;

namespace Dead
{
    public class Abyss : TriggerColliders, IUseDispose
    {
        public CompositeDisposable Disposable { get; } = new ();
        private Logger _logger;
        private IRestart _restart;
        
        [Inject]
        public void Construct(CollisionHandler collisionHandler, Logger logger, IRestart restart)
        {
            CollisionHandler = collisionHandler;
            Collider = GetComponent<UnityEngine.Collider>();
            _logger = logger;
            _restart = restart;

            TriggerEnter();
            _logger.UseDisposes.Add(this);
        }
        
        private void OnDisable()
        {
            Disposable.Clear();
        }

        protected override void TriggerEnter()
        {
            Collider
                .OnTriggerEnterAsObservable()
                .Subscribe(_ =>
                {
                    CollisionHandler.TriggerAbyss.Execute(true);
                    _restart.RestartGameCommand.Execute();
                } )
                .AddTo(Disposable);
        }
    }
}