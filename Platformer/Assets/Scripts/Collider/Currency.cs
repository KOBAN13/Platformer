using DefaultNamespace;
using UniRx;
using UniRx.Triggers;
using Zenject;

namespace Collider
{
    public class Currency : TriggerColliders
    {
        [Inject]
        public void Construct(CollisionHandler collisionHandler)
        {
            CollisionHandler = collisionHandler;
            Collider = GetComponent<UnityEngine.Collider>();
            
            TriggerEnter();
        }

        protected override void TriggerEnter()
        {
            Collider
                .OnTriggerEnterAsObservable()
                .Where(player => player.TryGetComponent<Player>(out var xPlayer))
                .Subscribe(trigger =>
                {
                    //
                })
                .AddTo(CompositeDisposableTrigger);
        }
    }
}