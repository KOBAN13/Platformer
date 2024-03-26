using UniRx;
using UnityEngine;
using UnityEngine.UI;

namespace Ui.View
{
    public abstract class Menu : MonoBehaviour
    {
        protected ViewModel _viewModel;
        [field: SerializeField] public Button ExitGame { get; private set; }
        
        public virtual void AddListenerButtonExitGame()
        {
            ExitGame.onClick.AddListener(() => _viewModel.LoadExitGame.Execute(new Unit()));
        }
    }
}