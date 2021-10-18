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

        /**
         * Metodo que obtiene todas las peliculas 
         * @return listado de peliculas
         */
        public async Task<IEnumerable<Pelicula>> GetAllPeliculas()
        {
            var db = dbConnection();

            var sql = @"
                        SELECT nombre_original, nombre, duracion, imagen, precio_menores, precio_adultos, precio_tercera_edad
                        FROM public.pelicula
                        ";

            return await db.QueryAsync<Pelicula>(sql, new { });
        }

        /**
         * Metodo que obtiene los detalles de una pelicula
         * @param nombreOriginal nombre de la pelicula
         * @return pelicula con los detalles 
         */
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

        /**
         * Metodo que agrega una pelicula
         * @param pelicula pelicula a ingresar
         * @return result resultado de la operacion
         */
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

        /**
         * Metodo que actualiza una pelicula 
         * @param pelicula pelicula a modificar
         * @return result resultado de la operacion
         */
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

        /**
         * Metodo que elimina una pelicula 
         * @param nombreOriginal nombre de la pelicula
         * @return result resultado de la operacion
         */
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

        /**
         * Metodo que obtiene las proyecciones
         * @return lista de proyecciones
         */
        public async Task<IEnumerable<Pelicula_por_sala>> GetAllPPS()
        {
            var db = dbConnection();

            var sql = @"
                        SELECT *
                        FROM public.pelicula_por_sala
                        ";

            return await db.QueryAsync<Pelicula_por_sala>(sql, new { });

        }

        /**
         * Metodo que obtiene las proyecciones de una pelicula
         * @param nombrePeli nombre de la pelicula
         * @return proyecciones de esa pelicula 
         */
        public async Task<IEnumerable<PPSTot>> GetAllPPSPelicula(string nombrePeli)
        {
            var db = dbConnection();

            var sql = @"
                        SELECT nombre_pelicula, nombre_cine,sala_id,hora
                        FROM sucursal JOIN pelicula_por_sala ON sucursal_id = id_sucursal
                        WHERE nombre_pelicula = @nombre_pelicula
                        ";

            return await db.QueryAsync<PPSTot>(sql, new { nombre_pelicula = nombrePeli });
        }

        /**
         * Metodo que obtiene todos los directores 
         * @return lista de directores 
         */
        public async Task<IEnumerable<Director>> GetAllDirectores()
        {
            var db = dbConnection();

            var sql = @"
                        SELECT *
                        FROM public.director
                        ";

            return await db.QueryAsync<Director>(sql, new { });
        }

        /**
         * Metodo que obtiene todos los protagonistas
         * @return lista de protagonistas
         */
        public async Task<IEnumerable<Protagonista>> GetAllProtagonistas()
        {
            var db = dbConnection();

            var sql = @"
                        SELECT *
                        FROM public.protagonista
                        ";

            return await db.QueryAsync<Protagonista>(sql, new { });
        }

        /**
         * Metodo que obtienen los tipos de clasificaciones 
         * @return lista de clasificaciones
         */
        public async Task<IEnumerable<Clasificacion>> GetAllClasificaciones()
        {
            var db = dbConnection();

            var sql = @"
                        SELECT *
                        FROM public.clasificacion
                        ";

            return await db.QueryAsync<Clasificacion>(sql, new { });
        }

        /**
         * Metodo que ingresa una proyeccion
         * @param proyeccion proyeccion a ingresar
         * @return result resultado de la operacion
         */
        public async Task<bool> InsertPPS(Pelicula_por_sala proyeccion)
        {
            var db = dbConnection();

            var sql = @"
                        INSERT INTO public.pelicula_por_sala (sucursal_id, sala_id, nombre_pelicula, hora)
                        VALUES (@sucursal_id, @sala_id, @nombre_pelicula, @hora)
                        ";

            var result = await db.ExecuteAsync(sql, new
            {
                proyeccion.sucursal_id,
                proyeccion.sala_id,
                proyeccion.nombre_pelicula,
                proyeccion.hora
            });

            return result > 0;
        }

        /**
        * Metodo que actualiza una proyeccion
        * @param proyeccion proyeccion por modificar
        * @return result resultado de la operacion
        */
        public async Task<bool> UpdatePPS(Pelicula_por_sala proyeccion)
        {
            var db = dbConnection();

            var sql = @"
                        UPDATE public.pelicula_por_sala
                        SET sucursal_id =@sucursal_id, 
                            sala_id=@sala_id, 
                            nombre_pelicula=@nombre_pelicula,
                            hora= @hora
                        WHERE id_en_cartelera = @id_en_cartelera
                        ";

            var result = await db.ExecuteAsync(sql, new
            {
                proyeccion.id_en_cartelera,
                proyeccion.sucursal_id,
                proyeccion.sala_id,
                proyeccion.nombre_pelicula,
                proyeccion.hora
            });

            return result > 0;
        }
    }
}
