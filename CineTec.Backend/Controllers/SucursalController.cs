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
    public class SucursalController : Controller
    {
        private readonly ISucursalRepository _sucursalRepository;

        public SucursalController(ISucursalRepository sucursalRepository)
        {
            _sucursalRepository = sucursalRepository;
        }

        [HttpGet]
        public async Task<IActionResult> GetAllSucursales()
        {
            return Ok(await _sucursalRepository.GetAllSucursales());
        }

        [HttpGet("nombres")]
        public async Task<IActionResult> GetAllNombres()
        {
            return Ok(await _sucursalRepository.GetCinesName());
        }

        [HttpGet("proyecciones/{nombreCine}")]
        public async Task<IActionResult> ProyeccionesPCine(string nombreCine)
        {
            return Ok(await _sucursalRepository.ProyeccionesPCine(nombreCine));
        }

        [HttpGet("horas/{nombreCine}/{nombrePeli}")]
        public async Task<IActionResult> HorasProyec(string nombreCine,string nombrePeli)
        {
            return Ok(await _sucursalRepository.HorasProyeccion(nombreCine, nombrePeli));
        }

        [HttpGet("s/{idSuc}")]
        public async Task<IActionResult> GetSucursalDetails(int idSuc)
        {
            return Ok(await _sucursalRepository.GetSucursalDetails(idSuc));
        }

        [HttpPost("addsuc")]
        public async Task<IActionResult> CreateSucursal([FromBody] Sucursal sucursal)
        {
            if (sucursal == null)

                return BadRequest();
            if (!ModelState.IsValid)
                return BadRequest(ModelState);

            var created = await _sucursalRepository.InsertSucursal(sucursal);

            return Created("created", created);
        }

        [HttpPut("modsuc")]
        public async Task<IActionResult> UpdateSucursal([FromBody] Sucursal sucursal)
        {
            if (sucursal == null)

                return BadRequest();
            if (!ModelState.IsValid)
                return BadRequest(ModelState);

            await _sucursalRepository.UpdateSucursal(sucursal);

            return NoContent();
        }

        [HttpDelete("quitsuc/{idsuc}")]
        public async Task<IActionResult> DeleteSucursal(int idsuc)
        {

            await _sucursalRepository.DeleteSucursal(idsuc);

            return NoContent();
        }
    }
}
