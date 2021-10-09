using CineTec.Backend.Model;
using Dapper;
using Npgsql;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace CineTec.Backend.Data.Repositories
{
    public class PeliculaRepository : IPeliculaRepository
    {
        private PostgreSQLConfiguration _connectionString;

        public PeliculaRepository(PostgreSQLConfiguration connectionString) 
        {
            _connectionString = connectionString;
        }

        protected NpgsqlConnection dbConnection() 
        {
            return new NpgsqlConnection(_connectionString.ConnectionString);
        }

        public async Task<IEnumerable<Pelicula>> GetAllPeliculas()
        {
            var db = dbConnection();

            var sql = @"
                        SELECT nombre_original, nombre, duracion, imagen, precio_menores, precio_adultos, precio_tercera_edad
                        FROM public.pelicula
                        ";

            return await db.QueryAsync<Pelicula>(sql, new { });
        }

        public async Task<Pelicula> GetPeliculaDetails(string nombreOriginal)
        {
            var db = dbConnection();

            var sql = @"
                        SELECT nombre_original,nombre, duracion, imagen, precio_menores, precio_adultos, precio_tercera_edad
                        FROM public.pelicula
                        WHERE nombre_original = @NombreOriginal
                        ";

            return await db.QueryFirstOrDefaultAsync<Pelicula>(sql, new {NombreOriginal = nombreOriginal });
        }

        public async Task<bool> InsertPelicula(Pelicula pelicula)
        {
            var db = dbConnection();

            var sql = @"
                        INSERT INTO public.pelicula (nombre_original, nombre, duracion, imagen, precio_menores, precio_adultos, precio_tercera_edad)
                        VALUES (@nombre_Original, @nombre, @duracion, @imagen, @precio_menores, @precio_adultos, @precio_tercera_edad)
                        ";

            var result = await db.ExecuteAsync(sql, new {pelicula.nombre_original, pelicula.nombre, pelicula.duracion, pelicula.imagen, pelicula.precio_menores,
                                                pelicula.precio_adultos,pelicula.precio_tercera_edad});

            return result > 0;
        }

        public async Task<bool> UpdatePelicula(Pelicula pelicula)
        {
            var db = dbConnection();

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

            var result = await db.ExecuteAsync(sql, new { pelicula.nombre_original, pelicula.nombre, pelicula.duracion, pelicula.imagen, pelicula.precio_menores,
                                                pelicula.precio_adultos, pelicula.precio_tercera_edad});

            return result > 0;
        }

        public async Task<bool> DeletePelicula(string nombre_pelicula)
        {
            var db = dbConnection();

            var sql = @"
                        DELETE
                        FROM public.pelicula
                        WHERE nombre_original = @nombre_Original
    
                        ";

            var result = await db.ExecuteAsync(sql, new { nombre_Original = nombre_pelicula });

            return result > 0;
        }

        public async Task<IEnumerable<Pelicula_por_sala>> GetAllPPS()
        {
            var db = dbConnection();

            var sql = @"
                        SELECT *
                        FROM public.pelicula_por_sala
                        ";

            return await db.QueryAsync<Pelicula_por_sala>(sql, new { });

        }

        public async Task<IEnumerable<Director>> GetAllDirectores()
        {
            var db = dbConnection();

            var sql = @"
                        SELECT *
                        FROM public.director
                        ";

            return await db.QueryAsync<Director>(sql, new { });
        }

        public async Task<IEnumerable<Protagonista>> GetAllProtagonistas()
        {
            var db = dbConnection();

            var sql = @"
                        SELECT *
                        FROM public.protagonista
                        ";

            return await db.QueryAsync<Protagonista>(sql, new { });
        }

        public async Task<IEnumerable<Clasificacion>> GetAllClasificaciones()
        {
            var db = dbConnection();

            var sql = @"
                        SELECT *
                        FROM public.clasificacion
                        ";

            return await db.QueryAsync<Clasificacion>(sql, new { });
        }
    }
}
