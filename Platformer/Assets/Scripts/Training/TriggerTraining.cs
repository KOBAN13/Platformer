using System;
using System.Collections;
using System.Collections.Generic;
using Collider;
using Cysharp.Threading.Tasks;
using DefaultNamespace;
using LogerEventCount;
using Ui.Interfase;
using UniRx;
using UniRx.Triggers;
using UnityEngine;
using Zenject;
using Logger = LogerEventCount.Logger;

namespace Training
{
    public class TriggerTraining : TriggerColliders, IUseDispose
    {
        [field: SerializeField] public List<string> TextTraining { get; private set; }
        [field: SerializeField] public float TimeTextOnScreen { get; private set; }
        public CompositeDisposable Disposable { get; } = new();
        
        private Logger _logger;
        private ITraining _training;

        [Inject]
        public void Construct(Logger logger, ITraining training)
        {
            _logger = logger;
            _training = training;
            Collider = GetComponent<UnityEngine.Collider>();
            _logger.UseDisposes.Add(this);
            
            TriggerEnter();
        }

        protected override void TriggerEnter()
        {
            Collider
                .OnTriggerEnterAsObservable()
                .Subscribe( _ =>
                {
                    StartTutorial().Forget();
                })
                .AddTo(Disposable);
        }
        
        private async UniTaskVoid StartTutorial()
        {
            foreach (var text in TextTraining)
            {
                _training.TextTrainingOnScreen = text;
                await UniTask.Delay(TimeSpan.FromSeconds(TimeTextOnScreen));
            }
        }
    }
}