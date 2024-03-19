using System;
using CameraSettings;
using Zenject;

namespace Collider
{
    public class CollisionHandler
    {
        private MediatorCameraSwitcher _mediatorCameraSwitcher;
        
        public Action<Cameras> TriggerCameraSwitcher;
        public Action<int> TriggerCurrency;

        [Inject]
        public void Construct(MediatorCameraSwitcher mediatorCameraSwitcher) =>
            _mediatorCameraSwitcher = mediatorCameraSwitcher;
    
        public void NotifyCameraSwitcher(Cameras cameras) => TriggerCameraSwitcher?.Invoke(cameras);
        public void NotifyCurrency(int countCurrency) => TriggerCurrency?.Invoke(countCurrency);

        public void HandleCameraSwitcher(Cameras cameras) => _mediatorCameraSwitcher.CameraSwitch(cameras);
    }
}