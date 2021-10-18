using CineTec.Backend.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace CineTec.Backend.Data.Repositories
{
    public interface IRolRepository
    {
        /**
         * Metodo que obtiene los detalles de un rol
         */
        Task<Rol> GetRolDetails(string Rname);
    }
}
