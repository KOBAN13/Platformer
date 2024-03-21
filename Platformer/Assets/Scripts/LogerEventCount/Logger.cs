using System;
using System.Collections.Generic;
using UniRx;
using UnityEngine;

namespace LogerEventCount
{
    public class Logger : MonoBehaviour
    {
        public List<IUseDispose> UseDisposes = new();
        private readonly CompositeDisposable _compositeDisposableLogger = new ();

        private void Start() => StartLogEventCount();

        private void StartLogEventCount()
        {
            Observable
                .Timer(TimeSpan.FromSeconds(5f))
                .Repeat()
                .Subscribe(_ =>
                {
                    UseDisposes.ForEach(x =>
                        Debug.LogWarning($"Count subscribe events in logger: {x.Disposable.Count}"));
                })
                .AddTo(_compositeDisposableLogger);
        }
    }
}