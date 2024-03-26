using System;
using System.Collections;
using Ui.Interfase;
using UniRx;
using UnityEngine;
using Zenject;

namespace Ui
{
    public class DarkeningScreen : MonoBehaviour
    {
        private IDisposable _disposable;
        private IDarkening _darkeningScreen;

        [Inject]
        public void Construct(IDarkening darkening) => _darkeningScreen = darkening;
        
        public void OnDarkening(float darkeningSpeedScreen) => _disposable = Observable
            .FromMicroCoroutine(coroutine => StartDarkening(darkeningSpeedScreen))
            .Subscribe();

        public void OnLightening(float lighteningSpeedScreen) =>
            _disposable = Observable
                .FromMicroCoroutine(coroutine => StartLightening(lighteningSpeedScreen))
                .Subscribe();

        public void InstantlyDarken() => _darkeningScreen.Darkening = 1f;
        public void InstantlyIlluminate() => _darkeningScreen.Darkening = 0f;
        

        private IEnumerator StartDarkening(float darkeningSpeedScreen)
        {
            while (_darkeningScreen.Darkening < 1f)
            {
                _darkeningScreen.Darkening += darkeningSpeedScreen * Time.deltaTime;

                yield return null;
            }
        }

        private IEnumerator StartLightening(float lighteningSpeedScreen)
        {
            while (_darkeningScreen.Darkening > 0f)
            {
                _darkeningScreen.Darkening -= lighteningSpeedScreen * Time.deltaTime;

                yield return null;
            }
        }

        private void OnDisable()
        {
            _disposable?.Dispose();
        }
    }
}