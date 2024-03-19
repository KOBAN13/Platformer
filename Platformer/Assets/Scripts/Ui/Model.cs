using System;
using System.Text.RegularExpressions;
using Ui.Interfase;
using UniRx;

namespace Ui
{
    public class Model : ITime
    {
        private string _time;
        private int _currency;
        
        private const string TimeFormatPattern = @"^([0-1]?[0-9]|2[0-3]):([0-5][0-9]):([0-5][0-9])$";
        
        public readonly ReactiveProperty<string> Timer = new();
        public readonly ReactiveProperty<int> Currency = new();

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

        private bool CheckTimeFormat(string time) => Regex.IsMatch(time, TimeFormatPattern);
    }
}
