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
            _viewModel = viewModel;
            CanvasAuthors.enabled = false;
        }
        
        public void AddListenerButtonPlay()
        {
            Play.onClick.AddListener(() =>
            {
                _viewModel.LoadScene.Execute(1);
            });
        }
        
        public void AddListenerAuthors()
        {
            CanvasStartGame.enabled = false;
            CanvasAuthors.enabled = true;
        }
        
        public void AddListenerBack()
        {
            CanvasAuthors.enabled = false;
            CanvasStartGame.enabled = true;
        }
        
        public void AddListenerButtonDaniil(string text)
        {
            TelegramDaniil.onClick.AddListener(() => _viewModel.LoadTelegram.Execute(text));
        }
        
        public void AddListenerTelegramDanil(string text)
        {
            TelegramDanil.onClick.AddListener(() => _viewModel.LoadTelegram.Execute(text));
        }
        
        public void AddListenerTelegramAndrey(string text)
        {
            TelegramAndrei.onClick.AddListener(() => _viewModel.LoadTelegram.Execute(text));
        }
    }
}