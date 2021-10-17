using CineTec.Backend.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace CineTec.Backend.Data.Repositories
{
    public interface IClienteRepository
    {
        Task<Cliente> GetClienteDetails (int cedula);
        Task<IEnumerable<Cliente>> GetAllClientes();
        Task<Cliente> GetClienteUser(string usuario);
        Task<bool> Validacion(string user, string pwd);
    }
}
