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

        public async Task<bool> UpdateAsientos(List<Asiento> asientos)
        {
            var db = dbConnection();
            var result = 1;
            foreach (Asiento asiento in asientos) 
            { 
                var sql = @"
                            UPDATE public.pelicula 
                            SET nombre= @nombre,
                                duracion=@duracion,
                                imagen=@imagen,
                                precio_menores= @precio_menores,
                                precio_adultos= @precio_adultos,
                                precio_tercera_edad= @precio_tercera_edad
                            WHERE nombre_original = @nombre_Original
                            ";

                result = await db.ExecuteAsync(sql, new
                {
                    asiento.asientoid,
                    asiento.disponibilidad,
                    asiento.salaid,
                                
                });
            }
            

            return result > 0;
        }
    }
}
