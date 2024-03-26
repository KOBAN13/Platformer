using System;
using System.Text.RegularExpressions;
using Collider;
using TMPro;
using Ui.Interfase;
using UniRx;
using UnityEngine;

namespace Ui
{
    public class Model : ITime, ICurrency, IEnableCanvas, IChangeColorText, IDarkening, IDisplay, ISkip, IClear, ITraining, IPause
    {
        private string _time;
        private int _currency;
        private bool _isActiveCanvas;
        private float _darkeningScreen;
        private float _popupText;
        private string _textOnStartGame;
        private string _textSkipGame;
        private string _textTraining;
        private bool _isClearView;
        private bool _isPause;
        
        private const string TimeFormatPattern = @"^([0-1]?[0-9]|2[0-3]):([0-5][0-9]):([0-5][0-9])$";
        
        public readonly ReactiveProperty<string> Timer = new();
        public readonly ReactiveProperty<int> Currency = new();
        public readonly ReactiveProperty<bool> EnableCanvas = new();
        public readonly ReactiveProperty<float> DarkeningScreen = new();
        public readonly ReactiveProperty<float> PopupText = new();
        public readonly ReactiveProperty<string> TextDisplayOnScreen = new();
        public readonly ReactiveProperty<string> TextSkipGame = new();
        public readonly ReactiveCommand<bool> ClearSubscribeView = new();
        public readonly ReactiveCommand<string> TextTraining = new();
        public readonly ReactiveCommand<bool> IsPause = new();

        public bool Pause
        {
            get => _isPause;
            set
            {
                _isPause = value;
                IsPause.Execute(_isPause);
            }
        }
        
        public string TextTrainingOnScreen
        {
            get => _textTraining;
            set
            {
                _textTraining = value ?? throw new ArgumentNullException();
                TextTraining.Execute(_textTraining);
            }
        }
        
        public bool ClearSubscribe
        {
            get => _isClearView;
            set
            {
                _isClearView = value;
                ClearSubscribeView.Execute(_isClearView);
            }
        }
        
        public string Skip
        {
            get => _textSkipGame;
            set
            {
                _textSkipGame = value ?? throw new ArgumentNullException();
                TextSkipGame.Value = _textSkipGame;
            }
        }
        
        public string TimeStartAfterGame
        {
            set
            {
                if (value == null) throw new ArgumentNullException();
                if (!CheckTimeFormat(value)) throw new FormatException();

                _time = value;
                Timer.Value = _time;
            }
        }

        public string Text
        {
            get => _textOnStartGame;
            set
            {
                _textOnStartGame = value ?? throw new ArgumentNullException();
                TextDisplayOnScreen.Value = _textOnStartGame;
            }
        }
        
        public int CountCurrency
        {
            get => _currency;
            set
            {
                if (value < 0) throw new ArgumentException();
                _currency = value;

                Currency.Value = _currency;
            }
        }

        public bool IsActiveCanvas
        {
            get => _isActiveCanvas;
            set
            {
                _isActiveCanvas = value;
                EnableCanvas.Value = _isActiveCanvas;
            }
        }

        public float Darkening
        {
            get => _darkeningScreen;
            set
            {
                _darkeningScreen = value;
                DarkeningScreen.Value = _darkeningScreen;
            }
        }

        public float ColorText
        {
            get => _popupText;
            set
            {
                if(value is < 0 or > 256) 
                    throw new FormatException();

                _popupText = value;
                PopupText.Value = _popupText;
            }
        }

        private bool CheckTimeFormat(string time) => Regex.IsMatch(time, TimeFormatPattern);
    }
}
