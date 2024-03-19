using System;
using UnityEngine;
using Zenject;

namespace InputSystem.InputStrategy
{
    public class BootstrapBaseMovement : MonoBehaviour
    {
        private ISetMovementStrategy _movementStrategy;
        private InputSwitcher _inputSwitcher;

        [Inject]
        public void Construct(ISetMovementStrategy movementStrategy, InputSwitcher inputSwitcher)
        {
            _movementStrategy = movementStrategy;
            _inputSwitcher = inputSwitcher;

            _movementStrategy.SetMovementStrategy(_inputSwitcher.GetStandardInput());
        }
    }
}