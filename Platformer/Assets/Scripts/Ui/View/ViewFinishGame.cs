using TMPro;
using UnityEngine;
using UnityEngine.UI;
using Zenject;

namespace Ui.View
{
    public class ViewFinishGame : Menu
    {
        [field: SerializeField] public TextMeshProUGUI TimeToFinish { get; private set; }
        [field: SerializeField] public Button MainMenu { get; private set; }
        [field: SerializeField] public Button Restart { get; private set; }
        
        [Inject]
        public void Construct(ViewModel viewModel)
        { 
            _viewModel = viewModel;
            TimeToFinish.text = $"You completed the game in: {_viewModel.Timer.Value}";
        }
        
        public void AddListenerButtonMainMenu()
        {
            Restart.onClick.AddListener(() => _viewModel.LoadSceneFinishGame.Execute(0));
        }

        public void AddListenerButtonRestart()
        {
            MainMenu.onClick.AddListener(() => _viewModel.LoadSceneFinishGame.Execute(1));
        }
    }
}