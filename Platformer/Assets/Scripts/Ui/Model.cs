using System;
using System.Text.RegularExpressions;
using Collider;
using Ui.Interfase;
using UniRx;
using UnityEngine;

namespace Ui
{
    public class Model : ITime, ICurrency, IEnableCanvas, IChangeColor
    {
        private string _time;
        private int _currency;
        private bool _isActiveCanvas;
        private float _darkeningScreen;
        private float _popupText;
        
        private const string TimeFormatPattern = @"^([0-1]?[0-9]|2[0-3]):([0-5][0-9]):([0-5][0-9])$";
        
        public readonly ReactiveProperty<string> Timer = new();
        public readonly ReactiveProperty<int> Currency = new();
        public readonly ReactiveProperty<bool> EnableCanvas = new();
        public readonly ReactiveProperty<float> DarkeningScreen = new();
        public readonly ReactiveProperty<float> PopupText = new();

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
                if(value is < 0 or > 255) 
                    throw new FormatException();

                _darkeningScreen = value;
                DarkeningScreen.Value = _darkeningScreen;
            }
        }

        public float ColorText
        {
            get => _popupText;
            set
            {
                if(value is < 0 or > 255) 
                    throw new FormatException();

                _popupText = value;
                PopupText.Value = _popupText;
            }
        }

        private bool CheckTimeFormat(string time) => Regex.IsMatch(time, TimeFormatPattern);
    }
}
