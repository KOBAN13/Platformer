using UniRx;

namespace Dead
{
    public interface IRestart
    {
        ReactiveCommand RestartGameCommand { get; }
    }
}