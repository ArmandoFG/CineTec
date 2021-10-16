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

        [HttpGet("sala/{salaid}")]
        public async Task<IActionResult> GetAllAsientosfromSala(int salaid)
        {
            return Ok(await _asientoRepository.GetAllAsientosfromSala(salaid));
        }

        [HttpGet("a/{asientoId}")]
        public async Task<IActionResult> GetAsientoDetails(string asientoId)
        {
            return Ok(await _asientoRepository.GetAsientoDetails(asientoId));
        }

        [HttpPut("syncAsiento")]
        public async Task<IActionResult> UpdateAsientos([FromBody] Asiento asiento) 
        {
            return Ok(await _asientoRepository.UpdateAsientos(asiento));
        }

        [HttpGet("Restriccion")]
        public async Task<IActionResult> Restriccion()
        {
            return Ok(await _asientoRepository.Restriccion());
        }
    }
}
