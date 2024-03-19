using System;
using TMPro;
using Ui;
using UniRx;
using UnityEngine;
using Zenject;

public class View : MonoBehaviour
{
    [field: SerializeField] public TextMeshProUGUI Time { get; private set; }
    [field: SerializeField] public TextMeshProUGUI Currency { get; private set; }
    
    private ViewModel _viewModel;
    private CompositeDisposable _compositeDisposable = new ();

    [Inject]
    public void Construct(ViewModel viewModel) => _viewModel = viewModel;
    public void OnEnable()
    {
        _viewModel.Subscribe();

        _viewModel.Currency
            .Subscribe(currency => Currency.text = $"Сurrency: {currency}")
            .AddTo(_compositeDisposable);
        _viewModel.Timer
            .Subscribe(time => Time.text = time)
            .AddTo(_compositeDisposable);
    }

    public void OnDisable()
    {
        _viewModel.Dispose();
        _compositeDisposable.Clear();
    }
}
