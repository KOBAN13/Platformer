using System.Collections;
using System.Collections.Generic;
using Ui;
using Ui.Interfase;
using UnityEngine;
using Zenject;

namespace StartGame
{
    public class StartGame : MonoBehaviour, ISkipStart
    {
        [field: Header("Text For History")]
        [field: SerializeField] public List<string> TextForStartGameHistory { get; private set; }
        
        [field: Header("Settings")]
        [field: SerializeField] public float TimeTextOnScreen { get; private set; }
        [field: SerializeField] public float TimeNonTextOnScreen { get; private set; }
        [field: SerializeField] public float TimeDarkeningBeforeText { get; private set; }

        private DarkeningScreen _darkeningScreen;
        private IDisplay _display;
        private ISkip _skip;
        private IClear _clear;
        
        [Inject]
        public void Construct(DarkeningScreen darkeningScreen, IDisplay display, ISkip skip, IClear clear)
        {
            _darkeningScreen = darkeningScreen;
            _display = display;
            _skip = skip;
            _clear = clear;
            _darkeningScreen.InstantlyDarken();

            _skip.Skip = "Skip: Enter";
            StartCoroutine(PauseBetweenTexts());
        }

        public void SkipStart()
        {
            StopCoroutine(PauseBetweenTexts());
            _clear.ClearSubscribe = true;
            StartCoroutine(AfterSkip());
        }

        private IEnumerator AfterSkip()
        {
            _darkeningScreen.OnLightening(TimeNonTextOnScreen);
            yield return null;
        }

        private IEnumerator PauseBetweenTexts()
        {
            Debug.Log("емный экран начало вывода текста");
            yield return new WaitForSeconds(TimeDarkeningBeforeText);
            Debug.Log("Вывод текста");
            for (var i = 0; i < TextForStartGameHistory.Count - 2; i++)
            {
                _display.Text = TextForStartGameHistory[i];
                Debug.Log("конкретный текст + задержка");
                yield return new WaitForSeconds(TimeTextOnScreen);
            }

            _darkeningScreen.OnLightening(TimeNonTextOnScreen);
            Debug.Log("Включение экрана");
        }
    }
}