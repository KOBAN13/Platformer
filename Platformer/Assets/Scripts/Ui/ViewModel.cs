using System;
using UniRx;
using Zenject;

namespace Ui
{
    public class ViewModel : IDisposable
    {
        private Model _model;
        private CompositeDisposable _compositeDisposable = new ();
        
        public readonly ReactiveProperty<string> Timer = new();
        public readonly ReactiveProperty<int> Currency = new();

        [Inject]
        public void Construct(Model model) => _model = model;

        public void Subscribe()
        {
            _model.Timer
                .Subscribe(time => Timer.Value = time)
                .AddTo(_compositeDisposable);
            _model.Currency
                .Subscribe(currency => Currency.Value = currency)
                .AddTo(_compositeDisposable);
        }
        
        public void Dispose()
        {
            _compositeDisposable.Clear();
        }
    }
}
