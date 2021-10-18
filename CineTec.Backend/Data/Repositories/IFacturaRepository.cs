using CineTec.Backend.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace CineTec.Backend.Data.Repositories
{
    public interface IFacturaRepository
    {
        /**
         * Metodo que obtiene los detalles de una factura 
         */
        Task<Factura> GetFacturadetails(int factId);

        /**
         * Metodo que obtiene todas las facturas 
         */
        Task<IEnumerable<Factura>> GetAllFacturas();

        /**
         * Metodo que agrega una factura 
         */
        Task<bool> InsertFact(Factura fact);



    }
}
