using System;
using System.Diagnostics;
using Cysharp.Threading.Tasks;
using UniRx;
using UnityEngine;
using UnityEngine.SceneManagement;
using Zenject;
using Debug = UnityEngine.Debug;

namespace Ui
{
    public class ViewModel
    {
        private Model _model;
        private CompositeDisposable _compositeDisposable = new ();

        public IReadOnlyReactiveProperty<string> Timer => _model.Timer;
        public IReadOnlyReactiveProperty<int> Currency => _model.Currency;
        public IReadOnlyReactiveProperty<bool> EnableCanvas => _model.EnableCanvas;
        public IReadOnlyReactiveProperty<float> DarkeningScreen => _model.DarkeningScreen;
        public IReadOnlyReactiveProperty<float> PopupText => _model.PopupText;
        public ReactiveCommand<string> TextDisplayOnScreen => _model.TextDisplayOnScreen;
        public IReadOnlyReactiveProperty<string> TextSkipStartGame => _model.TextSkipGame;
        public ReactiveCommand<Action> ClearSubscribe => _model.ClearSubscribeView;
        public IReadOnlyReactiveProperty<string> TextTraining => _model.TextTraining;
        public ReactiveCommand<bool> IsPause => _model.IsPause;
        
        public readonly ReactiveCommand<string> LoadTelegram = new();
        public readonly ReactiveCommand<Unit> LoadExitGame = new();

        [Inject]
        public void Construct(Model model)
        {
            _model = model;
            StartLogEventCount();
            Subscribe();
        }

        private void Subscribe()
        {
            LoadTelegram
                .Subscribe(OpenTelegram)
                .AddTo(_compositeDisposable);

            LoadExitGame
                .Subscribe(ExitGame)
                .AddTo(_compositeDisposable);
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

        public async UniTaskVoid OnLoadScene(int namedScene)
        {
            var loadScene = SceneManager.LoadSceneAsync(namedScene, LoadSceneMode.Single);
            loadScene.allowSceneActivation = false;

            while (!loadScene.isDone)
            {
                if (loadScene.progress >= 0.9f)
                {
                    loadScene.allowSceneActivation = true;
                }

                await UniTask.Yield();
            }
        }
        
        private void OpenTelegram(string link) => Process.Start(link);

        ~ViewModel()
        {
            _compositeDisposable.Clear();
        }
    }
}
