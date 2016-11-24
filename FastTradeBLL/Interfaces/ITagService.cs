using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using FastTradeBLL.DTO;
using FastTradeDAL.Entities;

namespace FastTradeBLL.Interfaces
{
    public interface ITagService
    {
        IEnumerable<TagDTO> GetTags();
        TagDTO GetTag(int TagId);
        void Update(int idTag);
        void Dispose();
    }
}
