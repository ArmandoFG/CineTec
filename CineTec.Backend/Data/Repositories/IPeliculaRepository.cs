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

        Task<Pelicula> GetPeliculaDetails(string nombreOriginal);

        Task<bool> InsertPelicula(Pelicula pelicula);

        Task<bool> UpdatePelicula(Pelicula pelicula);

        Task<bool> DeletePelicula(string nombre_pelicula);
    }
}
