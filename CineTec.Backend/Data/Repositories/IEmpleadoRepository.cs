using CineTec.Backend.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace CineTec.Backend.Data.Repositories
{
    public interface IEmpleadoRepository
    {
        Task<Empleados> GetEmpleadoDetails(int cedula);
        Task<IEnumerable<Empleados>> GetAllEmpleados();
    }
}
