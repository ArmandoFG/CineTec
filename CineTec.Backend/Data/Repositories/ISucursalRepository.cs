using CineTec.Backend.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace CineTec.Backend.Data.Repositories
{
    public interface ISucursalRepository
    {
        Task<IEnumerable<Sucursal>> GetAllSucursales();

        Task<Sucursal> GetSucursalDetails(int sucursal_id);

        Task<bool> InsertSucursal(Sucursal pelicula);

        Task<bool> UpdateSucursal(Sucursal pelicula);

        Task<bool> DeleteSucursal(int Sucursal_id);
    }
}
