using CineTec.Backend.Data.Repositories;
using CineTec.Backend.Model;
using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace CineTec.Backend.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class FacturaController : Controller
    {
        private readonly IFacturaRepository _facturaRepository;
        public FacturaController(IFacturaRepository facturaRepository)
        {
            _facturaRepository = facturaRepository;
        }

        /**
         * Metodo de tipo GET que obtiene la lista de facturas
         * @return result lista con las facturas y sus elementos
         */
        [HttpGet]
        public async Task<IActionResult> GetAllFacturas()
        {
            return Ok(await _facturaRepository.GetAllFacturas());
        }

        /**
         * Metodo de tipo GET que obtiene los elementos de una factura
         * @param factId Id de la factura que se desea consultar
         * @return result factura con sus detalles
         */
        [HttpGet("f/{factId}")]
        public async Task<IActionResult> GetFacturaDetails(int factId)
        {
            return Ok(await _facturaRepository.GetFacturadetails(factId));
        }

        /**
         * Metodo de tipo POST que inserta una nueva factura
         * @param fact Obtiene del cuerpo del mensaje los atributos de la factura nueva
         * @return result booleano con el resultado de la operacion
         */
        [HttpPost("Addfact")]
        public async Task<IActionResult> CreatePelicula([FromBody] Factura fact)
        {
            if (fact == null)

                return BadRequest();
            if (!ModelState.IsValid)
                return BadRequest(ModelState);

            var created = await _facturaRepository.InsertFact(fact);

            return Created("created", created);
        }


    }
}
