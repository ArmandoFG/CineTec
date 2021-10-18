using CineTec.Backend.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace CineTec.Backend.Data.Repositories
{
    public interface ISucursalRepository
    {
        /**
         * Metodo que obtiene todas las sucursales
         */
        Task<IEnumerable<Sucursal>> GetAllSucursales();

        /**
         * Metodo que obtiene los nombres de los cines 
         */
        Task<IEnumerable<string>> GetCinesName();

        /**
         * Metodo que obtiene las proyecciones en determinado cine
         */
        Task<IEnumerable<string>> ProyeccionesPCine(string nombreCine);

        /**
         * Metodo que obtiene las horas de proyeccion de una pelicula en cierto cine
         */
        Task<IEnumerable<string>> HorasProyeccion(string nombreCine, string nombrePeli);

        /**
         * Metodo que obtiene la sala en la que se transmite una pelicula, segun cierto cine y cierta hora
         */
        Task<string> SalasProyec(string nombreCine, string nombrePeli, string hora);

        /**
         * Metodo que obtiene los detalles de una sucursal 
         */
        Task<Sucursal> GetSucursalDetails(int sucursal_id);

        /**
         * Metodo que ingresa una sucursal 
         */
        Task<bool> InsertSucursal(Sucursal pelicula);

        /**
         * Metodo que obtiene actualiza una sucursal
         */
        Task<bool> UpdateSucursal(Sucursal pelicula);

        /**
         * Metodo que elimina una sucursal
         */
        Task<bool> DeleteSucursal(int Sucursal_id);
    }
}
