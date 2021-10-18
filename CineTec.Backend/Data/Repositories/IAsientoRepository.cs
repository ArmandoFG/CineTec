using CineTec.Backend.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace CineTec.Backend.Data.Repositories
{
    /**
    * Interfaz para el manejo de asientos 
    * @author Harold Espinoza
    */
    public interface IAsientoRepository
    {
        /**
         * Metodo que obtiene los detalles de un asiento
         * @return asiento asiento y sus detalles
         */
        Task<Asiento> GetAsientoDetails(string AsientoId);

        /**
         * Metodo que actualiza un asiento
         */
        Task<bool> UpdateAsientos(Asiento asiento);

        /**
         * Metodo que obtiene los asientos 
         */
        Task<IEnumerable<Asiento>> GetAllAsientos();

        /**
         * Metodo que obtiene los asientos de una sala
         */
        Task<IEnumerable<Asiento>> GetAllAsientosfromSala(int salaid);

        /**
         * Metodo que actualiza los asientos con la restriccion de covid-19
         */
        Task<bool> Restriccion();

        /**
         * Metodo que habilita los asientos restringido por el covid-19
         */
        Task<bool> habilitado();

        /**
         * Metodo que elimina los asientos de una sala
         */
        Task<bool> DeleteAsientos(int salaid);




    }
}
