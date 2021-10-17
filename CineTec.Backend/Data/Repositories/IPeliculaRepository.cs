using CineTec.Backend.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace CineTec.Backend.Data.Repositories
{
    public interface IPeliculaRepository
    {
        Task<IEnumerable<Pelicula>> GetAllPeliculas();

        Task<IEnumerable<Pelicula_por_sala>> GetAllPPS();

        Task<IEnumerable<PPSTot>> GetAllPPSPelicula(string nombrePeli);

        Task<IEnumerable<Director>> GetAllDirectores();

        Task<IEnumerable<Protagonista>> GetAllProtagonistas();

        Task<IEnumerable<Clasificacion>> GetAllClasificaciones();

        Task<Pelicula> GetPeliculaDetails(string nombreOriginal);

        Task<bool> InsertPelicula(Pelicula pelicula);

        Task<bool> UpdatePelicula(Pelicula pelicula);

        Task<bool> DeletePelicula(string nombre_pelicula);

        Task<bool> InsertPPS(Pelicula_por_sala proyeccion);

        Task<bool> UpdatePPS(Pelicula_por_sala proyeccion);
    }
}
