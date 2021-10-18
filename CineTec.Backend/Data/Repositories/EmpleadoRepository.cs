using CineTec.Backend.Model;
using Dapper;
using Npgsql;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace CineTec.Backend.Data.Repositories
{
    public class EmpleadoRepository : IEmpleadoRepository
    {
        private PostgreSQLConfiguration _connectionString;

        public EmpleadoRepository(PostgreSQLConfiguration connectionString)
        {
            _connectionString = connectionString;
        }

        protected NpgsqlConnection dbConnection()
        {
            return new NpgsqlConnection(_connectionString.ConnectionString);
        }

        /**
         * Metodo que obtiene los detalles de un empleado
         * @return empleado empleado con sus detalles
         */
        public async Task<Empleados> GetEmpleadoDetails(int cedula)
        {
            var db = dbConnection();

            var sql = @"
                        SELECT *
                        FROM public.empleado
                        WHERE cedula = @Cedula
                        ";
            var result = await db.QueryFirstOrDefaultAsync<Empleados>(sql, new { Cedula = cedula });
            return result;
        }

        /**
         * Metodo que obtiene todos los empleados 
         * @return lista de todos los empleados 
         */
        public async Task<IEnumerable<Empleados>> GetAllEmpleados()
        {
            var db = dbConnection();

            var sql = @"
                        SELECT *
                        FROM public.empleado
                        ";

            return await db.QueryAsync<Empleados>(sql, new { });
        }

        /**
         * Metodo que agrega un empleado
         * @param emp Empleado que se desea agregar
         * @return result resultado de la operacion
         * 
         */
        public async Task<bool> InsertEmpl(Empleados emp)
        {
            var db = dbConnection();

            var sql = @"
                        INSERT INTO public.empleado (nombre1, nombre2, Apellido1, Apellido2, cedula, fecha_de_nacimiento, numero_telefono,fecha_ingreso,edad,pass,usuario,id_sucursal,rol_name)
                        VALUES                      (@nombre1, @nombre2, @Apellido1, @Apellido2, @cedula, @DateTime, @numero_telefono,@DateTime2,@edad,@pass,@usuario,@id_sucursal,@rol_name)
                        ";

            var result = await db.ExecuteAsync(sql, new
            {
                emp.nombre1,
                emp.nombre2,
                emp.Apellido1,
                emp.Apellido2,
                emp.cedula,
                DateTime = DateTime.Parse(emp.fecha_de_nacimiento),
                emp.numero_telefono,
                DateTime2 = DateTime.Parse(emp.fecha_ingreso),
                emp.edad,
                emp.pass,
                emp.usuario,
                emp.id_sucursal,
                emp.rol_name
            });

            return result > 0;
        }

        /**
         * Metodo que actualiza un empleado
         * @param emp Empleado que se desea actualizar
         * @return result resultado de la operacion
         */
        public async Task<bool> UpdateEmp(Empleados emp)
        {
            var db = dbConnection();

            var sql = @"
                        UPDATE public.empleado
                        SET nombre1 = @nombre1, 
                        nombre2 = @nombre2, 
                        Apellido1 = @Apellido1, 
                        Apellido2 = @Apellido2,                       
                        fecha_de_nacimiento = @DateTime, 
                        numero_telefono = @numero_telefono,
                        fecha_ingreso = @DateTime2,
                        edad = @edad,
                        pass = @pass,
                        usuario = @usuario,
                        id_sucursal = @id_sucursal,
                        rol_name = @rol_name
                        WHERE cedula = @cedula 
                        ";

            var result = await db.ExecuteAsync(sql, new
            {
                emp.nombre1,
                emp.nombre2,
                emp.Apellido1,
                emp.Apellido2,
                emp.cedula,
                DateTime = DateTime.Parse(emp.fecha_de_nacimiento),
                emp.numero_telefono,
                DateTime2 = DateTime.Parse(emp.fecha_ingreso),
                emp.edad,
                emp.pass,
                emp.usuario,
                emp.id_sucursal,
                emp.rol_name


            });



            return result > 0;
        }

        /**
         * Metodo que valida el ingreso de un empleado administrador
         * @param user Usuario del empleado
         * @param pwd password del empleado
         * @return result resultado de la operacion
         */
        public async Task<bool> Validacion(string user, string pwd)
        {
            var db = dbConnection();

            var sql = @"
                        SELECT usuario, pass,rol_name
                        FROM public.empleado
                        WHERE usuario = @Usuario AND pass = @Pwd
                        ";

            var result = await db.QueryFirstOrDefaultAsync<Empleados>(sql, new { Usuario = user, Pwd = pwd });

            var rol = result.rol_name;

            if (result == null)
            {
                return false;
            }
            if (result.usuario == user && result.pass == pwd && result.rol_name == "Administrador")
            {
                return true;
            }
            else {
                return false;
            }


        }

        /**
         * Metodo que elimina un empleado
         * @param cedula Cedula del empleado a eliminar
         * @return result resultado de la operacion
         */
        public async Task<bool> DeleteEmp(int cedula)
        {
            var db = dbConnection();

            var sql = @"
                        DELETE
                        FROM public.empleado
                        WHERE cedula = @Cedula
    
                        ";

            var result = await db.ExecuteAsync(sql, new { Cedula = cedula });

            return result > 0;
        }
    }
}
