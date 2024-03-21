using Zenject;

namespace Collider
{
    public class MediatorCurrency
    {
        private ICurrency _currency;

        [Inject]
        public void Construct(ICurrency currency) => _currency = currency;

        public void SetCurrency(int currencyCount) => _currency.CountCurrency += currencyCount;
    }
}