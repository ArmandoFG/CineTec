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
        Task<bool> InsertEmpl(Empleados emp);
        Task<bool> UpdateEmp(Empleados emp);
        Task<bool> Validacion(string user, string pwd);
        Task<bool> DeleteEmp(int cedula);

    }
}
