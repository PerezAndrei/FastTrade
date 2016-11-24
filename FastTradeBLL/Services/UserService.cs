using System;
using AutoMapper;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using FastTradeBLL.Interfaces;
using FastTradeBLL.DTO;
using FastTradeBLL.Infrastructure;
using FastTradeDAL.Interfaces;
using FastTradeDAL.Repositories;
using FastTradeDAL.Entities;

namespace FastTradeBLL.Services
{
    public class UserService:IUserService
    {
        IUnitOfWork DataBase { get; set; }
        public UserService(IUnitOfWork uow)
        {
            DataBase = uow;
        }
        public void AddUser(UserDTO userDTO)
        {
            Mapper.CreateMap<UserDTO, User>();
            User user = Mapper.Map<UserDTO, User>(userDTO);
            DataBase.Users.Create(user);
            DataBase.Save();
        }

        public IEnumerable<UserDTO> GetUsers()
        {
            Mapper.CreateMap<User, UserDTO>();
            var users = Mapper.Map<IEnumerable<User>, IEnumerable<UserDTO>>(DataBase.Users.GetAll());
            return users;
        }
        public UserDTO AuthenGetUser(string email, string password)
        {
            Mapper.Initialize(cfg => cfg.CreateMap<User, UserDTO>()
                .ForMember("RoleName", opt=>opt.MapFrom(u=>u.Role.RoleName)));
            var user = Mapper.Map<User, UserDTO>(DataBase.Users.FindOne(u => u.Email == email && u.Password == password));
            return user;
        }

        public UserDTO GetUserReg(string email)
        {
            var config = new MapperConfiguration(cfg => cfg.CreateMap<User, UserDTO>()
                .ForMember("RoleName", opt => opt.MapFrom(u => u.Role.RoleName)));
            var mapper = config.CreateMapper();
            var user = mapper.Map<User, UserDTO>(DataBase.Users.FindOne(u => u.Email == email));
            return user;
        }

        public UserDTO GetUserManag(int id)
        {
            var config = new MapperConfiguration(cfg => cfg.CreateMap<User, UserDTO>()
                          .ForMember("RoleName", opt => opt.MapFrom(u => u.Role.RoleName)));
            var mapper = config.CreateMapper();
            var user = mapper.Map<User, UserDTO>(DataBase.Users.Get(id));
            return user;
        }
        public void EditUser(UserDTO userDTO)
        {
            var config = new MapperConfiguration(cfg => cfg.CreateMap<UserDTO, User>());
            var mapper = config.CreateMapper();
            var user = mapper.Map<UserDTO, User>(userDTO);
            DataBase.Users.Update(user);
            DataBase.Save();
        }
        public void Dispose()
        {
            DataBase.Dispose();
        }
    }
}
