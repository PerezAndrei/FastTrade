using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using FastTradeBLL.DTO;

namespace FastTradeBLL.Interfaces
{
    public interface ICategoryService
    {
        IEnumerable<CategoryDTO> GetCategories();
        void Dispose();
    }
}
