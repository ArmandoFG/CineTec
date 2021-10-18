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
    public class SalaController : Controller
    {
        private readonly ISalaRepository _salaRepository;
        public SalaController(ISalaRepository salaRepository)
        {
            _salaRepository = salaRepository;
        }

        /**
         * Metodo de tipo GET que obtiene todas las salas existentes
         * @return result lista de las salas existentes 
         */
        [HttpGet]
        public async Task<IActionResult> GetAllSalas ()
        {
            return Ok(await _salaRepository.GetAllSalas());
        }

        /**
         * Metodo de tipo GET que obtiene los detalles de una sala
         * @param salaId Id de la sala que se necesitan sus detalles
         * @return result sala con los detalles 
         */
        [HttpGet("s/{salaId}")]
        public async Task<IActionResult> GetSalaDetails(int salaId)
        {
            return Ok(await _salaRepository.GetSalaDetails(salaId));
        }

        /**
         * Metodo de tipo GET que obtiene las salas pertenecientes a una sucursal
         * @param sucId Id de la sucursal de la que se desea obtener las salas
         * @return result Lista de las salas pertenecientes a esa sucursal
         */
        [HttpGet("suc/{sucId}")]
        public async Task<IActionResult> GetSalaXSuc(int sucId)
        {
            return Ok(await _salaRepository.GetSalasXSucursal(sucId));
        }

        /**
         * Metodo de tipo GET que obtiene las salas pertenecientes a una sucursal
         * @param nombrecine Nombre de la sucursal de la que se desea obtener las salas
         * @return result Lista de las salas pertenecientes a esa sucursal
         */
        [HttpGet("sucn/{nombrecine}")]
        public async Task<IActionResult> GetSalaXNSuc(string nombrecine)
        {
            return Ok(await _salaRepository.GetSalasXNomSucursal(nombrecine));
        }

        [HttpPost("addsala")]
        public async Task<IActionResult> CreateSucursal([FromBody] Sala sala)
        {
            if (sala == null)

                return BadRequest();
            if (!ModelState.IsValid)
                return BadRequest(ModelState);

            var created = await _salaRepository.InsertSala(sala);

            return Created("created", created);
        }
    }
}
