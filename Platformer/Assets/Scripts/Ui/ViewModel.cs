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

        public IReadOnlyReactiveProperty<string> Timer => _model.Timer;
        public IReadOnlyReactiveProperty<int> Currency => _model.Currency;
        public IReadOnlyReactiveProperty<bool> EnableCanvas => _model.EnableCanvas;
        public IReadOnlyReactiveProperty<float> DarkeningScreen => _model.DarkeningScreen;
        public IReadOnlyReactiveProperty<float> PopupText => _model.PopupText;

        [Inject]
        public void Construct(Model model)
        {
            _model = model;
            StartLogEventCount();
        }

        public void Subscribe()
        {
            
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
