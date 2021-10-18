using CineTec.Backend.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace CineTec.Backend.Data.Repositories
{
    public interface IClienteRepository
    {
        /**
         * Metodo que obtiene los detalles de un cliente 
         */
        Task<Cliente> GetClienteDetails (int cedula);

        /**
         * Metodo que obtiene todos los clientes
         */
        Task<IEnumerable<Cliente>> GetAllClientes();

        /**
         * Metodo que obtiene un cliente por su usuario
         */
        Task<Cliente> GetClienteUser(string usuario);

        /**
         * Metodo que valida el ingreso de un usuario
         */
        Task<bool> Validacion(string user, string pwd);
    }
}
