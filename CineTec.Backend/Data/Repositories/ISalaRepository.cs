using CineTec.Backend.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace CineTec.Backend.Data.Repositories
{
    public interface ISalaRepository
    {
        Task<Sala> GetSalaDetails(int salaId);
        Task<IEnumerable<Sala>> GetAllSalas();
    }
}
