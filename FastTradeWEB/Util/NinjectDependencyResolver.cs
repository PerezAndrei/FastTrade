using System;
using Ninject;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using FastTradeBLL.Interfaces;
using FastTradeBLL.Services;

namespace FastTradeWEB.Util
{
    public class NinjectDependencyResolver:IDependencyResolver
    {
        private IKernel kernel;
        public NinjectDependencyResolver(IKernel kernelParam)
        {
            kernel = kernelParam;
            AddBindings();
        }
        public object GetService(Type serviceType)
        {
            return kernel.TryGet(serviceType);
        }
        public IEnumerable<object> GetServices(Type serviceType)
        {
            return kernel.GetAll(serviceType);
        }
        public void AddBindings()
        {
            kernel.Bind<IUserService>().To<UserService>();
            kernel.Bind<ICategoryService>().To<CategoryService>();
            kernel.Bind<IAdService>().To<AdService>();
            kernel.Bind<IKindService>().To<KindService>();
            kernel.Bind<ILocationService>().To<LocationService>();
            kernel.Bind<ITagService>().To<TagService>();
            kernel.Bind<IImageService>().To<ImageService>();
        }
    }
}