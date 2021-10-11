using CineTec.Backend.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace CineTec.Backend.Data.Repositories
{
    public interface IAsientoRepository
    {
        Task<Asiento> GetAsientoDetails(string AsientoId);
        Task<bool> UpdateAsientos(List<Asiento>asientos);

        Task<IEnumerable<Asiento>> GetAllAsientos();
    }
}
