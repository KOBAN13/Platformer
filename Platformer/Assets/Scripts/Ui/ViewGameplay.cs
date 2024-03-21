using System;
using LogerEventCount;
using TMPro;
using Ui;
using UniRx;
using UnityEngine;
using UnityEngine.UI;
using Zenject;

public class ViewGameplay : MonoBehaviour
{
    [field: SerializeField] public TextMeshProUGUI Time { get; private set; }
    [field: SerializeField] public TextMeshProUGUI Currency { get; private set; }
    [field: SerializeField] public Canvas UiGameplay { get; private set; }
    [field: SerializeField] public Canvas DiePlayer { get; private set; }
    [field: SerializeField] public Image DarkeningScreen { get; private set; }
    [field: SerializeField] public TextMeshProUGUI PopupText { get; private set; }
    
    private ViewModel _viewModel;
    private CompositeDisposable _compositeDisposable = new ();

    [Inject]
    public void Construct(ViewModel viewModel)
    { 
        _viewModel = viewModel;
        StartLogEventCount();
    }
    public void OnEnable()
    {
        Subscribe();
    }

    public void OnDisable()
    {
        _viewModel.Dispose();
        _compositeDisposable.Clear();
    }

    private void Subscribe()
    {
        _viewModel.Subscribe();

        _viewModel.Currency
            .Subscribe(currency => Currency.text = $"Сurrency: {currency}")
            .AddTo(_compositeDisposable);
        
        _viewModel.Timer
            .Subscribe(time => Time.text = time)
            .AddTo(_compositeDisposable);
        
        _viewModel.EnableCanvas
            .Subscribe(isActive =>
            {
                DiePlayer.enabled = isActive;
                UiGameplay.enabled = !isActive;
            })
            .AddTo(_compositeDisposable);
        
        _viewModel.DarkeningScreen
            .Subscribe(alpha =>
            {
                var darkeningScreenColor = DarkeningScreen.color;
                darkeningScreenColor.a = alpha;
                DarkeningScreen.color = darkeningScreenColor;
            })
            .AddTo(_compositeDisposable);

        _viewModel.PopupText
            .Subscribe(alpha =>
            {
                var popupTextColor = PopupText.color;
                popupTextColor.a = alpha;
                PopupText.color = popupTextColor;
            })
            .AddTo(_compositeDisposable);
    }
    
    private void StartLogEventCount()
    {
        Observable
            .Timer(TimeSpan.FromSeconds(5f))
            .Repeat()
            .Subscribe(_ =>
            {
                Debug.LogWarning($"Count subscribe events in ViewModel: {_compositeDisposable.Count}");
            })
            .AddTo(_compositeDisposable);
    }
}
