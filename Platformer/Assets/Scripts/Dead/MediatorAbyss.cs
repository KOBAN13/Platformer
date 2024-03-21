using Ui.Interfase;
using Zenject;

namespace Dead
{
    public class MediatorAbyss
    {
        private IEnableCanvas _enableCanvas;

        [Inject]
        public void Construct(IEnableCanvas currency) => _enableCanvas = currency;

        public void SetCurrency(bool isActiveCanvas) => _enableCanvas.IsActiveCanvas = isActiveCanvas;
    }
}