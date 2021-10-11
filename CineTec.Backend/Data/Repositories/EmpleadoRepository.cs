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
        public async Task<Empleados> GetEmpleadoDetails(int cedula)
        {
            var db = dbConnection();

            var sql = @"
                        SELECT *
                        FROM public.empleado
                        WHERE cedula = @Cedula
                        ";

            return await db.QueryFirstOrDefaultAsync<Empleados>(sql, new { Cedula = cedula });
        }

        public async Task<IEnumerable<Empleados>> GetAllEmpleados()
        {
            var db = dbConnection();

            var sql = @"
                        SELECT *
                        FROM public.empleado
                        ";

            return await db.QueryAsync<Empleados>(sql, new { });
        }
    }
}
