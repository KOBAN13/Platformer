using UniRx;

namespace LogerEventCount
{
    public interface IUseDispose
    {
        CompositeDisposable Disposable { get; }
    }
}