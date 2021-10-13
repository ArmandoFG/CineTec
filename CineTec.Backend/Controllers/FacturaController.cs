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

        [HttpGet]
        public async Task<IActionResult> GetAllFacturas()
        {
            return Ok(await _facturaRepository.GetAllFacturas());
        }

        [HttpGet("f/{factId}")]
        public async Task<IActionResult> GetFacturaDetails(int factId)
        {
            return Ok(await _facturaRepository.GetFacturadetails(factId));
        }

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
