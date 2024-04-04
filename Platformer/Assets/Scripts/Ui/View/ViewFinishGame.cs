using DG.Tweening;
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
            ViewModel = viewModel;
            TimeToFinish.text = $"You completed the game in: {ViewModel.Timer.Value}";
        }
        
        public void AddListenerButtonMainMenu()
        {
            MainMenu.onClick.AddListener( async () =>
            {
                await AnimationButton(MainMenu, () => ViewModel.OnLoadScene(0).Forget());
            });
        }

        public void AddListenerButtonRestart()
        {
            Restart.onClick.AddListener(async () =>
            {
                await AnimationButton(Restart, () => ViewModel.OnLoadScene(1).Forget());
            });
        }
    }
}