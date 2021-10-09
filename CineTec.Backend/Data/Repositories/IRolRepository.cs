using CineTec.Backend.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace CineTec.Backend.Data.Repositories
{
    public interface IRolRepository
    {
        Task<Rol> GetRolDetails(string Rname);
    }
}
