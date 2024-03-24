using CameraSettings;
using Dead;
using LogerEventCount;
using UniRx;
using UnityEngine;
using Zenject;
using Logger = LogerEventCount.Logger;

namespace Collider
{
    public class CollisionHandler : MonoBehaviour, IUseDispose
    {
        public CompositeDisposable Disposable { get; } = new();
        
        private MediatorCameraSwitcher _mediatorCameraSwitcher;
        private MediatorCurrency _mediatorCurrency;
        private MediatorAbyss _mediatorAbyss;
        private MediatorCamerasSlideSwitcher _mediatorCamerasSlide;
        private Logger _logger;

        public readonly ReactiveCommand<ICameraSwitchStrategy> TriggerCameraSwitcher = new();
        public readonly ReactiveCommand<int> TriggerCurrency = new();
        public readonly ReactiveCommand<bool> TriggerAbyss = new();
        public readonly ReactiveCommand<CamerasSide> TriggerCamerasSide = new();

        [Inject]
        public void Construct(MediatorCameraSwitcher mediatorCameraSwitcher, MediatorCurrency mediatorCurrency, 
            MediatorAbyss mediatorAbyss, MediatorCamerasSlideSwitcher mediatorCamerasSlideSwitcher,
            Logger logger)
        {
            _mediatorCameraSwitcher = mediatorCameraSwitcher;
            _mediatorCurrency = mediatorCurrency;
            _mediatorAbyss = mediatorAbyss;
            _mediatorCamerasSlide = mediatorCamerasSlideSwitcher;
            _logger = logger;
            
            NotifyCameraSwitcher();
            NotifyCurrency();
            NotifyAbyss();
            NotifyCamerasSlideSwitch();
            
            _logger.UseDisposes.Add(this);
        }

        private void NotifyCameraSwitcher()
        {
            TriggerCameraSwitcher
                .Subscribe(cameraSwitchStrategy => _mediatorCameraSwitcher.CameraSwitch(cameraSwitchStrategy))
                .AddTo(Disposable);
        }
        
        private void NotifyCurrency()
        {
            TriggerCurrency
                .Subscribe(currencyCount => _mediatorCurrency.SetCurrency(currencyCount))
                .AddTo(Disposable);
        }

        private void NotifyAbyss()
        {
            TriggerAbyss
                .Subscribe(_ => _mediatorAbyss.SetCurrency(_))
                .AddTo(Disposable);
        }
        
        private void NotifyCamerasSlideSwitch()
        {
            TriggerCamerasSide
                .Subscribe(camerasSide => _mediatorCamerasSlide.SwitchCamerasSlide(camerasSide))
                .AddTo(Disposable);
        }
        
        public void OnDisable()
        {
            Disposable.Clear();
        }
    }
}