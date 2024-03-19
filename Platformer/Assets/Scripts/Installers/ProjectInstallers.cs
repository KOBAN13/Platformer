using Ui;
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
            Container.BindInterfacesAndSelfTo<Model>().AsSingle().Lazy();
            Container.BindInterfacesAndSelfTo<ViewModel>().AsSingle().Lazy();
        }
    }
}