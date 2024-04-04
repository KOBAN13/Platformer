using System;
using Cysharp.Threading.Tasks;
using DG.Tweening;
using UniRx;
using UnityEngine;
using UnityEngine.UI;

namespace Ui.View
{
    public abstract class Menu : MonoBehaviour
    {
        protected ViewModel ViewModel;
        [field: SerializeField] public Button ExitGame { get; private set; }
        
        public virtual void AddListenerButtonExitGame()
        {
            ExitGame.onClick.AddListener(() =>
            {
                AnimationButton(ExitGame, () => ViewModel.LoadExitGame.Execute(new Unit())).Forget();
            });
        }

        protected async UniTask AnimationButton(Button button, Action operationInViewModel)
        {
            var source = new UniTaskCompletionSource();
            button.transform.DOShakeScale(0.5f, 0.3f).OnComplete(() =>
            {
                button.transform.localScale = Vector3.one;
                source.TrySetResult();
                operationInViewModel.Invoke();
            });
            
            await source.Task;
        }
    }
}