using CineTec.Backend.Model;
using Dapper;
using Npgsql;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace CineTec.Backend.Data.Repositories
{
    public class RolRepository : IRolRepository
    {
        private PostgreSQLConfiguration _connectionString;

        public RolRepository(PostgreSQLConfiguration connectionString)
        {
            _connectionString = connectionString;
        }

        protected NpgsqlConnection dbConnection()
        {
            return new NpgsqlConnection(_connectionString.ConnectionString);
        }
        public async Task<Rol> GetRolDetails(string Rname)
        {
            var db = dbConnection();

            var sql = @"
                        SELECT *
                        FROM public.rol
                        WHERE nombre = @Rname
                        ";

            return await db.QueryFirstOrDefaultAsync<Rol>(sql, new { Rname = Rname });
        }
    }
}
