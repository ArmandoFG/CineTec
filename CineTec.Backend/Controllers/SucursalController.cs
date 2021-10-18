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

        /**
         * Metodo de tipo GET que obtiene las sucursales existentes 
         * @return result lista de las sucrusales
         */
        [HttpGet]
        public async Task<IActionResult> GetAllSucursales()
        {
            return Ok(await _sucursalRepository.GetAllSucursales());
        }

        /**
         * Metodo de tipo GET que obtiene los nombres de las sucursales
         * @return result Lista de los nombres de las sucursales
         */
        [HttpGet("nombres")]
        public async Task<IActionResult> GetAllNombres()
        {
            return Ok(await _sucursalRepository.GetCinesName());
        }

        /**
         * Metodo de tipo GET que obtiene las proyecciones de una sucursal
         * @param nombrecine Nombre de la sucursal de la que se desea obtener las proyecciones
         * @return result Lista de las proyecciones pertenecientes a esa sucursal
         */
        [HttpGet("proyecciones/{nombreCine}")]
        public async Task<IActionResult> ProyeccionesPCine(string nombreCine)
        {
            return Ok(await _sucursalRepository.ProyeccionesPCine(nombreCine));
        }

        /**
         * Metodo de tipo GET que obtiene las horas de las proyecciones de una pelicula en determinada sucursal
         * @param nombreCine Nombre de la sucursal de la que se desea obtener las proyecciones
         * @param nombrePeli Nombre de la pelicula de la que se desea saber las proyecciones
         * @return result Lista de las horas en las que se proyecta la pelicula 
         */
        [HttpGet("horas/{nombreCine}/{nombrePeli}")]
        public async Task<IActionResult> HorasProyec(string nombreCine,string nombrePeli)
        {
            return Ok(await _sucursalRepository.HorasProyeccion(nombreCine, nombrePeli));
        }

        /**
         * Metodo de tipo GET que obtiene la sala en la que se da una pelicula a una determinada hora en una sucursal
         * @param nombrecine Nombre de la sucursal de la que se desea obtener las sala
         * @param nombrePeli Nombre de la pelicula que se desa conocer la sala
         * @param hora Hora a la que se proyecta la pelicula
         * @return result Sala en la que se proyecta la pelicula
         */
        [HttpGet("sala/{nombreCine}/{nombrePeli}/{hora}")]
        public async Task<IActionResult> SalasProyec(string nombreCine, string nombrePeli,string hora)
        {
            return Ok(await _sucursalRepository.SalasProyec(nombreCine, nombrePeli,hora));
        }

        /**
         * Metodo de tipo GET que obtiene los detalles de una sucursal
         * @param idsuc Id de la sucursal que se desea
         * @return result Sucursal con sus detalles
         */
        [HttpGet("s/{idSuc}")]
        public async Task<IActionResult> GetSucursalDetails(int idSuc)
        {
            return Ok(await _sucursalRepository.GetSucursalDetails(idSuc));
        }

        /**
         * Metodo de tipo POST que ingresa una nueva sucursal
         * @return result booleano con el resultado de la operacion
         */
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

        /**
         * Metodo de tipo PUT que modifica una sucursal 
         * @param sucursal Obtiene del cuerpo del mensaje los parametros de la sucursal a modificar
         * @return result booleano con el resultado de la operacion 
         */
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

        /**
         * Metodo de tipo DELETE que elimina una sucursal
         * @param idsuc Id de la sucursal que desea eliminar
         * @return result booleano con el resultado de la operacion 
         */
        [HttpDelete("quitsuc/{idsuc}")]
        public async Task<IActionResult> DeleteSucursal(int idsuc)
        {

            await _sucursalRepository.DeleteSucursal(idsuc);

            return NoContent();
        }
    }
}
