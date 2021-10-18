using CineTec.Backend.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace CineTec.Backend.Data.Repositories
{
    public interface IPeliculaRepository
    {
        /**
         * Metodo que obtiene todas las peliculas 
         */
        Task<IEnumerable<Pelicula>> GetAllPeliculas();

        /**
         * Metodo que obtiene las proyecciones 
         */
        Task<IEnumerable<Pelicula_por_sala>> GetAllPPS();

        /**
         * Metodo que obtiene las proyecciones de una pelicula
         */
        Task<IEnumerable<PPSTot>> GetAllPPSPelicula(string nombrePeli);

        /**
         * Metodo que obtiene todos los directores 
         */
        Task<IEnumerable<Director>> GetAllDirectores();

        /**
         * Metodo que obtiene todos los protagonistas
         */
        Task<IEnumerable<Protagonista>> GetAllProtagonistas();

        /**
         * Metodo que obtienen los tipos de clasificaciones 
         */
        Task<IEnumerable<Clasificacion>> GetAllClasificaciones();

        /**
         * Metodo que obtiene los detalles de una pelicula
         */
        Task<Pelicula> GetPeliculaDetails(string nombreOriginal);

        /**
         * Metodo que agrega una pelicula
         */
        Task<bool> InsertPelicula(Pelicula pelicula);

        /**
         * Metodo que actualiza una pelicula 
         */
        Task<bool> UpdatePelicula(Pelicula pelicula);

        /**
         * Metodo que elimina una pelicula 
         */
        Task<bool> DeletePelicula(string nombre_pelicula);

        /**
         * Metodo que ingresa una proyeccion
         */
        Task<bool> InsertPPS(Pelicula_por_sala proyeccion);

        /**
         * Metodo que actualiza una proyeccion
         */
        Task<bool> UpdatePPS(Pelicula_por_sala proyeccion);
    }
}
