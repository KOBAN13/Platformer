using System;
using UniRx;
using UnityEngine;
using Zenject;

namespace Ui
{
    public class ViewModel : IDisposable
    {
        private Model _model;
        private CompositeDisposable _compositeDisposable = new ();
        
        public readonly ReactiveProperty<string> Timer = new();
        public readonly ReactiveProperty<int> Currency = new();
        public readonly ReactiveProperty<bool> EnableCanvas = new();
        public readonly ReactiveProperty<float> DarkeningScreen = new();
        public readonly ReactiveProperty<float> PopupText = new();

        [Inject]
        public void Construct(Model model)
        {
            _model = model;
            StartLogEventCount();
        }

        public void Subscribe()
        {
            _model.Timer
                .Subscribe(time => Timer.Value = time)
                .AddTo(_compositeDisposable);
            
            _model.Currency
                .Subscribe(currency => Currency.Value = currency)
                .AddTo(_compositeDisposable);
            
            _model.EnableCanvas
                .Subscribe(isActive => EnableCanvas.Value = isActive)
                .AddTo(_compositeDisposable);

            _model.DarkeningScreen
                .Subscribe(alpha => DarkeningScreen.Value = alpha)
                .AddTo(_compositeDisposable);

            _model.PopupText
                .Subscribe(alpha => PopupText.Value = alpha)
                .AddTo(_compositeDisposable);
        }

        public void Dispose()
        {
            _compositeDisposable.Clear();
        }
        
        private void StartLogEventCount()
        {
            Observable
                .Timer(TimeSpan.FromSeconds(5f))
                .Repeat()
                .Subscribe(_ =>
                {
                    Debug.LogWarning($"Count subscribe events in Model: {_compositeDisposable.Count}");
                })
                .AddTo(_compositeDisposable);
        }
    }
}
