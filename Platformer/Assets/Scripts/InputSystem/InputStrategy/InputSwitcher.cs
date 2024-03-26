using Zenject;

namespace InputSystem.InputStrategy
{
    public class InputSwitcher
    {
        private StandardInput _standardInput;
        private InputSlide _inputSlide;

        [Inject]
        public void Construct(StandardInput standardInput, InputSlide inputSlide)
        {
            _standardInput = standardInput;
            _inputSlide = inputSlide;
        }

        public IMovementStrategy GetStandardInput(int sign)
        {
            _standardInput.SetSignMovement(sign);
            return _standardInput;
        }

        public IMovementStrategy GetInputSlide(int sign)
        {
            _inputSlide.SetSignMovement(sign);
            return _inputSlide;
        }
    }
}