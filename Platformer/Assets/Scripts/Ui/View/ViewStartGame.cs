using DG.Tweening;
using UnityEngine;
using UnityEngine.UI;
using Zenject;

namespace Ui.View
{
    public class ViewStartGame : Menu
    {
        [field: SerializeField] public Button Play { get; private set; }
        [field: SerializeField] public Button Authors { get; private set; }
        
        [field: SerializeField] public Button TelegramDaniil { get; private set; }
        [field: SerializeField] public Button TelegramDanil { get; private set; }
        
        [field: SerializeField] public Button TelegramAndrei { get; private set; }
        [field: SerializeField] public Button Back { get; private set; } //выход для авторов

        [field: SerializeField] public Canvas CanvasAuthors { get; private set; }
        [field: SerializeField] public Canvas CanvasStartGame { get; private set; }

        [Inject]
        public void Construct(ViewModel viewModel)
        {
            ViewModel = viewModel;
            CanvasAuthors.enabled = false;
        }
        
        public void AddListenerButtonPlay()
        {
            Play.onClick.AddListener(async () =>
            {
                await AnimationButton(Play, () => ViewModel.OnLoadScene(1).Forget());
            });
        }
        
        public async void AddListenerAuthors()
        {
            await AnimationButton(Authors, () =>
            {
                CanvasStartGame.enabled = false;
                CanvasAuthors.enabled = true;
            });
        }
        
        public async void AddListenerBack()
        {
            await AnimationButton(Back, () =>
            {
                CanvasAuthors.enabled = false;
                CanvasStartGame.enabled = true;
            });
        }

        public void AddListenerButtonDaniil(string text)
        {
            TelegramDaniil.onClick.AddListener( async () =>
            {
                await AnimationButton(TelegramDaniil, () => ViewModel.LoadTelegram.Execute(text));
            });
        }
        
        public void AddListenerTelegramDanil(string text)
        {
            TelegramDanil.onClick.AddListener( async () =>
            {
                await AnimationButton(TelegramDanil, () => ViewModel.LoadTelegram.Execute(text));
            });
        }
        
        public void AddListenerTelegramAndrey(string text)
        {
            TelegramAndrei.onClick.AddListener( async () =>
            {
                await AnimationButton(TelegramAndrei, () => ViewModel.LoadTelegram.Execute(text));
            });
        }
    }
}