using System;
using System.Collections;
using LogerEventCount;
using Ui.Interfase;
using UniRx;
using UnityEngine;
using UnityEngine.SceneManagement;
using Zenject;
using Logger = LogerEventCount.Logger;

namespace Dead
{
    public class RestartGame : MonoBehaviour, IUseDispose, IRestart
    {
        [field: SerializeField] public float DarkeningSpeedScreen { get; private set; }
        [field: SerializeField] public float PopupTextSpeed { get; private set; }
        [field: SerializeField] public float WaitAfterTextEffect { get; private set; }

        public CompositeDisposable Disposable { get; } = new();
        public ReactiveCommand RestartGameCommand { get; } = new();
        private Logger _logger;
        private IEnableCanvas _enableCanvas;
        private IChangeColorText _changeColor;
        private IDarkening _darkening;

        [Inject]
        public void Construct(Logger logger, IEnableCanvas enableCanvas, IChangeColorText changeColor, IDarkening darkening)
        {
            _logger = logger;
            _enableCanvas = enableCanvas;
            _changeColor = changeColor;
            _darkening = darkening;
            _logger.UseDisposes.Add(this);
            Subscribe();
        }

        private void Subscribe()
        {
            RestartGameCommand
                .Subscribe(_ => StartCoroutine(Wait()))
                .AddTo(Disposable);
        }

        private IEnumerator Wait()
        {
            _darkening.Darkening = 0f;
            while (_darkening.Darkening < 1f)
            {
                _darkening.Darkening += DarkeningSpeedScreen * Time.deltaTime;

                if (_darkening.Darkening > 0.2f)
                    _changeColor.ColorText += PopupTextSpeed * Time.deltaTime;

                yield return null;
            }

            while (_changeColor.ColorText > 0.01f)
            {
                _changeColor.ColorText -= PopupTextSpeed * Time.deltaTime;
                yield return null;
            }

            yield return new WaitForSeconds(WaitAfterTextEffect);

            SceneManager.LoadScene("Gameplay1");
            _enableCanvas.IsActiveCanvas = false;
            _darkening.Darkening = 0f;
        }
    }
}