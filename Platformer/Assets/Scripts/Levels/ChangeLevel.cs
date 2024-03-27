using Collider;
using LogerEventCount;
using UniRx;
using UniRx.Triggers;
using UnityEngine;
using UnityEngine.SceneManagement;
using Zenject;
using Logger = LogerEventCount.Logger;

public class ChangeLevel : TriggerColliders, IUseDispose
{
    [field: SerializeField] public int Level { get; private set; }
    public CompositeDisposable Disposable { get; } = new();
    private Logger _logger;

    [Inject]
    public void Construct(CollisionHandler collisionHandler, Logger logger)
    {
        CollisionHandler = collisionHandler;
        _logger = logger;
        _logger.UseDisposes.Add(this);
        Collider = GetComponent<UnityEngine.Collider>();
        
        TriggerEnter();
    }
    
    protected override void TriggerEnter()
    {
        Collider.OnTriggerEnterAsObservable().Subscribe(_ =>
        {
            if (Level == CollisionHandler.Level.ReadOnlyPoints.Count)
                LoadScene();
            else
            {
                CollisionHandler.TriggerNextLevel.Execute(Level);
            }
        })
            .AddTo(Disposable);
    }
    
    private void LoadScene() => SceneManager.LoadScene("FinishGame");
}
