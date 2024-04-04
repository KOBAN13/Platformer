using Ui;
using Ui.View;
using UnityEngine;
using Zenject;

namespace Installers
{
    public class ProjectInstallers : MonoInstaller
    {
        public override void InstallBindings()
        {
            BindModel();
        }

        private void BindModel()
        {
            Container.BindInterfacesAndSelfTo<Model>().AsSingle().NonLazy();
            Container.BindInterfacesAndSelfTo<ViewModel>().AsSingle().NonLazy();
        }
    }
}