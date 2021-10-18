using CineTec.Backend.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace CineTec.Backend.Data.Repositories
{
    public interface ISalaRepository
    {
        /**
         * Metodo que obtiene los detalles de una sala
         */
        Task<Sala> GetSalaDetails(int salaId);

        /**
         * Metodo que obtiene todas las salas
         */
        Task<IEnumerable<Sala>> GetAllSalas();

        /**
         * Metodo que obtiene todas las salas de una sucursal por su id
         */
        Task<IEnumerable<Sala>> GetSalasXSucursal(int Sucid);

        /**
         * Metodo que obtiene todas salas de una sucursal por su nombre 
         */
        Task<IEnumerable<Sala>> GetSalasXNomSucursal(string nombreSuc);

        /**
         * Metodo que ingresa una nueva sala
         */
        Task<bool> InsertSala(Sala sala);

        /**
         * Metodo que elimina una sala
         */
        Task<bool> DeleteSala(int salaid);
    }
}
