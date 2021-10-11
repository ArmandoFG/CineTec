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
    public class AsientoController : Controller
    {
        private readonly IAsientoRepository _asientoRepository;
        public AsientoController(IAsientoRepository asientoRepository)
        {
            _asientoRepository = asientoRepository;
        }

        [HttpGet]
        public async Task<IActionResult> GetAllAsientos()
        {
            return Ok(await _asientoRepository.GetAllAsientos());
        }

        [HttpGet("a/{asientoId}")]
        public async Task<IActionResult> GetAsientoDetails(string asientoId)
        {
            return Ok(await _asientoRepository.GetAsientoDetails(asientoId));
        }

        [HttpPut("syncAsiento")]
        public async Task<IActionResult> UpdateAsientos([FromBody] List<Asiento> asientos) 
        {
            return Ok(await _asientoRepository.UpdateAsientos(asientos));
        }
    }
}
