using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using FastTradeBLL.DTO;
using FastTradeDAL;

namespace FastTradeBLL.Interfaces
{
    public interface IUserService
    {
        void AddUser(UserDTO userDTO);
        IEnumerable<UserDTO> GetUsers();
        UserDTO GetUserReg(string email);
        UserDTO GetUserManag(int id);
        UserDTO AuthenGetUser(string email, string password);
        void EditUser(UserDTO userDTO);
        void Dispose();
    }
}
