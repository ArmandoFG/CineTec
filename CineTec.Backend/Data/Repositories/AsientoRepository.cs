using CineTec.Backend.Model;
using Dapper;
using Npgsql;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace CineTec.Backend.Data.Repositories
{
    public class AsientoRepository : IAsientoRepository
    {
        private PostgreSQLConfiguration _connectionString;

        public AsientoRepository(PostgreSQLConfiguration connectionString)
        {
            _connectionString = connectionString;
        }

        protected NpgsqlConnection dbConnection()
        {
            return new NpgsqlConnection(_connectionString.ConnectionString);
        }
        public async Task<Asiento> GetAsientoDetails(string AsientoId)
        {
            var db = dbConnection();

            var sql = @"
                        SELECT salaid,asientoid, disponibilidad
                        FROM public.asiento
                        WHERE asientoid = @AsientoId
                        ";

            return await db.QueryFirstOrDefaultAsync<Asiento>(sql, new { AsientoId = AsientoId });
        }

        public async Task<IEnumerable<Asiento>> GetAllAsientos()
        {
            var db = dbConnection();

            var sql = @"
                        SELECT *
                        FROM public.asiento
                        ";

            return await db.QueryAsync<Asiento>(sql, new { });
        }

        public async Task<bool> UpdateAsientos(Asiento asiento)
        {
            var db = dbConnection();
           
            var sql = @"
                        UPDATE public.asiento
                        SET disponibilidad = @disponibilidad
                        WHERE asientoid = @asientoid AND salaid = @salaid
                        ";

            var result = await db.ExecuteAsync(sql, new
        {
            asiento.salaid,
            asiento.asientoid,
            asiento.disponibilidad
                    
                                
        });
           
            

            return result > 0;
        }
    }
}
