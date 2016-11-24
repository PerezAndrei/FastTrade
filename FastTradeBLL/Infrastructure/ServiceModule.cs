using System;
using Ninject.Modules;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using FastTradeDAL.Interfaces;
using FastTradeDAL.Repositories;

namespace FastTradeBLL.Infrastructure
{
    public class ServiceModule:NinjectModule
    {
        private string connectionString;
        public ServiceModule(string connection)
        {
            connectionString = connection;
        }
        public override void Load()
        {
            Bind<IUnitOfWork>().To<EFUnitOfWork>().WithConstructorArgument(connectionString);
        }
    }
}
