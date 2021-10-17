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

        public async Task<IEnumerable<Asiento>> GetAllAsientosfromSala(int salaid)
        {
            var db = dbConnection();

            var sql = @"
                        SELECT asientoid, salaid, disponibilidad
                        FROM asiento
                        WHERE salaid = @Salaid
                        ";

            return await db.QueryAsync<Asiento>(sql, new {Salaid = salaid });
        }

        public async Task<bool> Restriccion()
        {
            var db = dbConnection();

            var sql = @"
                        UPDATE public.asiento
                        SET disponibilidad = 'Restringido'
                        WHERE asientoid = 'A1' OR asientoid = 'A2' OR asientoid = 'A5' OR asientoid = 'A6' OR asientoid = 'A9' OR asientoid = 'A10' OR
                              asientoid = 'B1' OR asientoid = 'B2' OR asientoid = 'B5' OR asientoid = 'B6' OR asientoid = 'B9' OR asientoid = 'B10' OR
                              asientoid = 'C1' OR asientoid = 'C2' OR asientoid = 'C5' OR asientoid = 'C6' OR asientoid = 'C9' OR asientoid = 'C10' OR
                              asientoid = 'D1' OR asientoid = 'D2' OR asientoid = 'D5' OR asientoid = 'D6' OR asientoid = 'D9' OR asientoid = 'D10' OR
                              asientoid = 'E1' OR asientoid = 'E2' OR asientoid = 'E5' OR asientoid = 'E6' OR asientoid = 'E9' OR asientoid = 'E10' OR
                              asientoid = 'F1' OR asientoid = 'F2' OR asientoid = 'F5' OR asientoid = 'F6' OR asientoid = 'F9' OR asientoid = 'F10'
                              
                        ";

            var result = await db.ExecuteAsync(sql, new {});



            return result > 0;
        }

        public async Task<bool> habilitado()
        {
            var db = dbConnection();

            var sql = @"
                        UPDATE public.asiento
                        SET disponibilidad = 'Disponible'
                        WHERE asientoid = 'A1' OR asientoid = 'A2' OR asientoid = 'A5' OR asientoid = 'A6' OR asientoid = 'A9' OR asientoid = 'A10' OR
                              asientoid = 'B1' OR asientoid = 'B2' OR asientoid = 'B5' OR asientoid = 'B6' OR asientoid = 'B9' OR asientoid = 'B10' OR
                              asientoid = 'C1' OR asientoid = 'C2' OR asientoid = 'C5' OR asientoid = 'C6' OR asientoid = 'C9' OR asientoid = 'C10' OR
                              asientoid = 'D1' OR asientoid = 'D2' OR asientoid = 'D5' OR asientoid = 'D6' OR asientoid = 'D9' OR asientoid = 'D10' OR
                              asientoid = 'E1' OR asientoid = 'E2' OR asientoid = 'E5' OR asientoid = 'E6' OR asientoid = 'E9' OR asientoid = 'E10' OR
                              asientoid = 'F1' OR asientoid = 'F2' OR asientoid = 'F5' OR asientoid = 'F6' OR asientoid = 'F9' OR asientoid = 'F10'
                              
                        ";

            var result = await db.ExecuteAsync(sql, new { });



            return result > 0;
        }
    }
}
