using System;
using Cysharp.Threading.Tasks;
using DG.Tweening;
using LogerEventCount;
using TMPro;
using Ui;
using Ui.View;
using UniRx;
using UnityEngine;
using UnityEngine.UI;
using Zenject;

public class ViewGameplay : Menu
{
    [field: SerializeField] public TextMeshProUGUI Time { get; private set; }
    [field: SerializeField] public TextMeshProUGUI Currency { get; private set; }
    [field: SerializeField] public Canvas UiGameplay { get; private set; }
    [field: SerializeField] public Canvas DiePlayer { get; private set; }
    [field: SerializeField] public Image DarkeningScreen { get; private set; }
    [field: SerializeField] public Image DarkeningScreenGameplay { get; private set; }
    [field: SerializeField] public TextMeshProUGUI PopupText { get; private set; }
    [field: SerializeField] public TextMeshProUGUI TextDisplayOnScreen { get; private set; }
    [field: SerializeField] public TextMeshProUGUI TextSkipStart { get; private set; }
    [field: SerializeField] public TextMeshProUGUI TextTraining { get; private set; }
    [field: SerializeField] public Canvas PauseCanvas { get; private set; }
    [field: SerializeField] public Button MainMenu { get; private set; }
    
    private CompositeDisposable _compositeDisposable = new ();
    private CompositeDisposable _disposableTextAfterCoroutine = new();
    private bool _isClearText;
    private Tween _tweenSkipText;
    private Tween _tweenForSkip;

    [Inject]
    public void Construct(ViewModel viewModel)
    { 
        ViewModel = viewModel;
        StartLogEventCount();
        Subscribe();
    }

    public void OnDisable()
    {
        _compositeDisposable.Clear();
        _disposableTextAfterCoroutine.Clear();
    }

    private void Subscribe()
    {
        ViewModel.Currency
            .Subscribe(currency => Currency.text = $"Сurrency: {currency}")
            .AddTo(_compositeDisposable);
        
        ViewModel.Timer
            .Subscribe(time => Time.text = time)
            .AddTo(_compositeDisposable);
        
        ViewModel.EnableCanvas
            .Subscribe(isActive =>
            {
                DiePlayer.enabled = isActive;
                UiGameplay.enabled = !isActive;
            })
            .AddTo(_compositeDisposable);
        
        ViewModel.DarkeningScreen
            .Subscribe(alpha =>
            {
                var darkeningScreenColor = DarkeningScreen.color;
                darkeningScreenColor.a = alpha;
                DarkeningScreen.color = darkeningScreenColor;
            })
            .AddTo(_compositeDisposable);
        
        ViewModel.DarkeningScreen
            .Subscribe(alpha =>
            {
                var darkeningScreenColor = DarkeningScreenGameplay.color;
                darkeningScreenColor.a = alpha;
                DarkeningScreenGameplay.color = darkeningScreenColor;
            })
            .AddTo(_compositeDisposable);

        ViewModel.PopupText
            .Subscribe(alpha =>
            {
                var popupTextColor = PopupText.color;
                popupTextColor.a = alpha;
                PopupText.color = popupTextColor;
            })
            .AddTo(_compositeDisposable);

        ViewModel.TextDisplayOnScreen.Subscribe(text =>
        {
            AnimateTextFade(text, TextDisplayOnScreen, 5f, HideTextHistory(TextDisplayOnScreen, 5f));
        })
            .AddTo(_disposableTextAfterCoroutine);

        ViewModel.TextSkipStartGame.Subscribe(text =>
        {
            AnimateTextFade(text, TextSkipStart, 7f, HideTextHistory(TextSkipStart, 7f));
        })
            .AddTo(_disposableTextAfterCoroutine);

        ViewModel.TextTraining
            .Subscribe(text =>
                AnimateTextFade(text, TextTraining, 4.5f, HideTextHistory(TextTraining, 4.5f)))
            .AddTo(_compositeDisposable);

        ViewModel.ClearSubscribe
            .Subscribe(cancel =>
            {
                cancel();
                _tweenForSkip.Kill();
                _tweenSkipText.Kill();
                TextSkipStart.text = "";
                TextDisplayOnScreen.text = "";
            })
            .AddTo(_compositeDisposable);

        ViewModel
            .IsPause
            .Subscribe(CanvasLock)
            .AddTo(_compositeDisposable);
    }
    
    public void AddListenerButtonLoadMainScene()
    {
        UnityEngine.Time.timeScale = 1;
        //await AnimationButton(MainMenu, () => MainMenu.onClick.AddListener(() => ViewModel.OnLoadScene(0).Forget()));
        ViewModel.OnLoadScene(0).Forget();
    }

    private Action HideTextHistory(TextMeshProUGUI text, float fadeDuration)
    {
        return () => text
            .DOFade(0, fadeDuration)
            .SetEase(Ease.Linear);
    }

    private void AnimateTextFade(string text, TextMeshProUGUI textField, float fadeInDuration, Action complitOperation)
    {
        Debug.Log("анимация текста");
        textField.text = text;
        _tweenSkipText = TextDisplayOnScreen
            .DOFade(1, fadeInDuration)
            .From(0)
            .SetEase(Ease.Linear)
            .OnComplete(() => complitOperation?.Invoke());
    }
    
    private void CanvasLock(bool isPause)
    {
        if (isPause)
        {
            UiGameplay.enabled = false;
            PauseCanvas.enabled = true;
        }
        else
        {
            UiGameplay.enabled = true;
            PauseCanvas.enabled = false;
        }
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
