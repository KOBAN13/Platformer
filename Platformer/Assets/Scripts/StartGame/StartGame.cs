using System;
using System.Collections;
using System.Collections.Generic;
using System.Threading;
using Cysharp.Threading.Tasks;
using Music;
using Ui;
using Ui.Interfase;
using UnityEngine;
using Zenject;

namespace StartGame
{
    public class StartGame : MonoBehaviour, ISkipStart
    {
        [field: Header("Music")] 
        [field: SerializeField] public AudioController AudioController { get; private set; }

        [field: Header("Text For History")]
        [field: SerializeField] public List<string> TextForStartGameHistory { get; private set; }
        
        [field: Header("Settings")]
        [field: SerializeField] public int TimeTextOnScreen { get; private set; }
        [field: SerializeField] public float TimeNonTextOnScreen { get; private set; }
        [field: SerializeField] public int TimeDarkeningBeforeText { get; private set; }
        
        [field: SerializeField] public List<GameObject> Wall { get; private set; }

        private DarkeningScreen _darkeningScreen;
        private IDisplay _display;
        private ISkip _skip;
        private IClear _clear;
        private CancellationTokenSource _cancellationToken;
        private List<string> _text;

        [Inject]
        public void Construct(DarkeningScreen darkeningScreen, IDisplay display, ISkip skip, IClear clear)
        {
            _cancellationToken = new CancellationTokenSource();
            _darkeningScreen = darkeningScreen;
            _display = display;
            _skip = skip;
            _clear = clear;
            _darkeningScreen.InstantlyDarken();

            _skip.Skip = "Skip: Enter";
            _text = new(TextForStartGameHistory);
            StartTask();
        }

        public void SkipStart()
        {
            _clear.ClearSubscribe = StopGame;
            AfterSkip();
        }

        private void StopGame() => _cancellationToken.Cancel();

        private void StartTask()
        {
            try
            {
                PauseBetweenTexts(_cancellationToken.Token).Forget();
            }
            catch (OperationCanceledException)
            {
                Debug.Log("Skip text");
            }
        }

        private async void AfterSkip()
        {
            Wall.ForEach(x => x.SetActive(false));
            _darkeningScreen.OnLightening(TimeNonTextOnScreen);
            AudioController.PlayLoop(AudioController.Embient, true);
            AudioController.PlayMusic(AudioController.Embient);
            await UniTask.Yield();
        }

        //нарушение SRP по времени уже не успел нормально сделать
        private async UniTaskVoid PauseBetweenTexts(CancellationToken token)
        {
            await UniTask.Delay(TimeSpan.FromSeconds(TimeDarkeningBeforeText), cancellationToken: token);
            for (var i = 0; i < _text.Count; i++)
            {
                token.ThrowIfCancellationRequested();

                _display.Text = _text[i];
                await UniTask.Delay(TimeSpan.FromSeconds(TimeTextOnScreen) , cancellationToken: token);
                AudioController.PlayLoop(AudioController.Boy, false);
                AudioController.PlayMusic(AudioController.Spirit);

                if (i is not (5 or 8)) continue;
                AudioController.PlayLoop(AudioController.Boy, false);
                AudioController.PlayMusic(AudioController.Boy);
            }

            _darkeningScreen.OnLightening(TimeNonTextOnScreen);
            
            Wall
                .ForEach(x => x.SetActive(false));  // как и это все
            
            AudioController.PlayLoop(AudioController.Embient, true);
            AudioController.PlayMusic(AudioController.Embient);
        }

        private void OnDisable()
        {
            _cancellationToken.Cancel();
            _cancellationToken.Dispose();
        }
    }
}