using CineTec.Backend.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace CineTec.Backend.Data.Repositories
{
    public interface IEmpleadoRepository
    {
        /**
         * Metodo que obtiene los detalles de un empleado
         */
        Task<Empleados> GetEmpleadoDetails(int cedula);

        /**
         * Metodo que obtiene todos los empleados 
         */
        Task<IEnumerable<Empleados>> GetAllEmpleados();

        /**
         * Metodo que agrega un empleado
         */
        Task<bool> InsertEmpl(Empleados emp);

        /**
         * Metodo que actualiza un empleado
         */
        Task<bool> UpdateEmp(Empleados emp);

        /**
         * Metodo que valida el ingreso de un empleado administrador 
         */
        Task<bool> Validacion(string user, string pwd);

        /**
         * Metodo que elimina un empleado
         */
        Task<bool> DeleteEmp(int cedula);

    }
}
