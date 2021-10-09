using CineTec.Backend.Model;
using Dapper;
using Npgsql;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace CineTec.Backend.Data.Repositories
{
    public class SucursalRepository : ISucursalRepository
    {
        private PostgreSQLConfiguration _connectionString;

        public SucursalRepository(PostgreSQLConfiguration connectionString)
        {
            _connectionString = connectionString;
        }

        protected NpgsqlConnection dbConnection()
        {
            return new NpgsqlConnection(_connectionString.ConnectionString);
        }

        public async Task<bool> DeleteSucursal(int Sucursal_id)
        {
          
            var db = dbConnection();

            var sql = @"
                    DELETE
                    FROM public.Sucursal
                    WHERE id_sucursal = @SucursalID
    
                    ";

            var result = await db.ExecuteAsync(sql, new { SucursalID = Sucursal_id });

            return result > 0;
            
        }

        public async Task<IEnumerable<Sucursal>> GetAllSucursales()
        {
            var db = dbConnection();

            var sql = @"
                        SELECT *
                        FROM public.sucursal
                        ";

            return await db.QueryAsync<Sucursal>(sql, new { });
        }

        public async Task<Sucursal> GetSucursalDetails(int sucursal_id)
        {
            var db = dbConnection();

            var sql = @"
                        SELECT id_sucursal,ubicacion, nombre_cine, cantidad_salas
                        FROM public.sucursal
                        WHERE id_sucursal = @Sucursal_id
                        ";

            return await db.QueryFirstOrDefaultAsync<Sucursal>(sql, new { Sucursal_id = sucursal_id });
        }

        public async Task<bool> InsertSucursal(Sucursal sucursal)
        {
            var db = dbConnection();

            var sql = @"
                        INSERT INTO public.sucursal (ubicacion, nombre_cine, cantidad_salas)
                        VALUES (@ubicacion, @nombre_cine, @cantidad_salas)
                        ";

            var result = await db.ExecuteAsync(sql, new
            {
                sucursal.ubicacion,
                sucursal.nombre_cine,
                sucursal.cantidad_salas
                
            });

            return result > 0;
        }

        public async Task<bool> UpdateSucursal(Sucursal sucursal)
        {
            var db = dbConnection();

            var sql = @"
                        UPDATE public.sucursal
                        SET ubicacion= @ubicacion,
                            nombre_cine=@nombre_cine,
                            cantidad_salas=@cantidad_salas
                            
                        WHERE id_sucursal = @id_sucursal
                        ";

            var result = await db.ExecuteAsync(sql, new
            {
                sucursal.ubicacion,
                sucursal.nombre_cine,
                sucursal.cantidad_salas,
                sucursal.id_sucursal
            });

            return result > 0;
        }
    }
}
