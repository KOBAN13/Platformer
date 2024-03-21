using LogerEventCount;
using UniRx;
using UnityEngine;

namespace Collider
{
    public abstract class TriggerColliders : MonoBehaviour
    {
        protected CollisionHandler CollisionHandler;
        protected UnityEngine.Collider Collider;

        protected abstract void TriggerEnter();
    }
}