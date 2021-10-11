using CineTec.Backend.Model;
using Dapper;
using Npgsql;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace CineTec.Backend.Data.Repositories
{
    public class FacturaRepository : IFacturaRepository
    {
        private PostgreSQLConfiguration _connectionString;

        public FacturaRepository(PostgreSQLConfiguration connectionString)
        {
            _connectionString = connectionString;
        }

        protected NpgsqlConnection dbConnection()
        {
            return new NpgsqlConnection(_connectionString.ConnectionString);
        }
        public async Task<Factura> GetFacturadetails(int factId)
        {
            var db = dbConnection();

            var sql = @"
                        SELECT *
                        FROM public.factura
                        WHERE fact_id = @factId 
                        ";

            return await db.QueryFirstOrDefaultAsync<Factura>(sql, new { factId = factId });
        }

        public async Task<IEnumerable<Factura>> GetAllFacturas()
        {
            var db = dbConnection();

            var sql = @"
                        SELECT *
                        FROM public.Factura
                        ";

            return await db.QueryAsync<Factura>(sql, new { });
        }
    }
}
