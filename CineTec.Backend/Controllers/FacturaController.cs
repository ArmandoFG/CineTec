using CineTec.Backend.Data.Repositories;
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

        [HttpGet("f/{asientoId}")]
        public async Task<IActionResult> GetFacturaDetails(int factId)
        {
            return Ok(await _facturaRepository.GetFacturadetails(factId));
        }
    }
}
