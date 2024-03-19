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
        
        public IMovementStrategy GetStandardInput() => _standardInput;
        public IMovementStrategy GetInputSlide() => _inputSlide;
    }
}