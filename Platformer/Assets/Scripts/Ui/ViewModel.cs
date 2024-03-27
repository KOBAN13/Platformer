using System;
using System.Diagnostics;
using UniRx;
using UnityEngine;
using UnityEngine.SceneManagement;
using Zenject;
using Debug = UnityEngine.Debug;

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
        public IReadOnlyReactiveProperty<string> TextDisplayOnScreen => _model.TextDisplayOnScreen;
        public IReadOnlyReactiveProperty<string> TextSkipStartGame => _model.TextSkipGame;
        public ReactiveCommand<bool> ClearSubscribe => _model.ClearSubscribeView;
        public IReadOnlyReactiveProperty<string> TextTraining => _model.TextTraining;
        public ReactiveCommand<bool> IsPause => _model.IsPause;

        public readonly ReactiveCommand<int> LoadSceneStartGame = new();
        public readonly ReactiveCommand<int> LoadSceneFinishGame = new();
        public readonly ReactiveCommand<int> LoadSceneInPause = new();
        public readonly ReactiveCommand<string> LoadTelegram = new();
        public readonly ReactiveCommand<Unit> LoadExitGame = new();

        [Inject]
        public void Construct(Model model)
        {
            _model = model;
            StartLogEventCount();
            Subscribe();
        }

        public void Subscribe()
        {
            LoadSceneStartGame
                .Subscribe(OnLoadScene)
                .AddTo(_compositeDisposable);
            
            LoadSceneInPause
                .Subscribe(OnLoadScene)
                .AddTo(_compositeDisposable);
            
            LoadSceneFinishGame
                .Subscribe(OnLoadScene)
                .AddTo(_compositeDisposable);

            LoadTelegram
                .Subscribe(OpenTelegram)
                .AddTo(_compositeDisposable);

            LoadExitGame
                .Subscribe(ExitGame)
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
        
        private void ExitGame(Unit unit) => Application.Quit();
        private void OnLoadScene(int namedScene) => SceneManager.LoadScene(namedScene);
        private void OpenTelegram(string link) => Process.Start(link);
    }
}
