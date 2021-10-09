using CineTec.Backend.Model;
using Dapper;
using Npgsql;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace CineTec.Backend.Data.Repositories
{
    public class ClienteRepository : IClienteRepository
    {
        private PostgreSQLConfiguration _connectionString;

        public ClienteRepository(PostgreSQLConfiguration connectionString)
        {
            _connectionString = connectionString;
        }

        protected NpgsqlConnection dbConnection()
        {
            return new NpgsqlConnection(_connectionString.ConnectionString);
        }
        public async Task<Cliente> GetClienteDetails(int cedula)
        {
            var db = dbConnection();

            var sql = @"
                        SELECT cedula,edad,nombre,fecha_nacimiento, numero_telefono,usuario,pass,id_sucursal
                        FROM public.cliente
                        WHERE cedula = @Cedula
                        ";

            return await db.QueryFirstOrDefaultAsync<Cliente>(sql, new { Cedula = cedula });
        }

        public async Task<IEnumerable<Cliente>> GetAllClientes()
        {
            var db = dbConnection();

            var sql = @"
                        SELECT *
                        FROM public.cliente
                        ";

            return await db.QueryAsync<Cliente>(sql, new { });
        }
    }
}
