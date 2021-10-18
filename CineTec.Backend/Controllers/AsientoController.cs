using CineTec.Backend.Data.Repositories;
using CineTec.Backend.Model;
using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

/*
 * Controlador de asientos
 * @author Harold Espinoza
 * 
 */
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

        /**
         * Metodo de tipo Get para obtener una lista de todos los asientos
         * @return asientos Lista de asientos
         */
        [HttpGet]
        public async Task<IActionResult> GetAllAsientos()
        {
            return Ok(await _asientoRepository.GetAllAsientos());
        }

        /**
         * Metodo de tipo Get para obtener una lista de todos los asientos de una sala
         * @param salaid id de la sala que se desean los asientos
         * @return asientos Lista de asientos de esa sala
         */
        [HttpGet("sala/{salaid}")]
        public async Task<IActionResult> GetAllAsientosfromSala(int salaid)
        {
            return Ok(await _asientoRepository.GetAllAsientosfromSala(salaid));
        }

        /**
         * Metodo de tipo Get para obtener los detalles de un asiento
         * @param asientoId id del asiento que se necesitan los detalles
         * @return asiento asiento con sus atributos
         */
        [HttpGet("a/{asientoId}")]
        public async Task<IActionResult> GetAsientoDetails(string asientoId)
        {
            return Ok(await _asientoRepository.GetAsientoDetails(asientoId));
        }

        /**
         * Metodo de tipo PUT que actualiza un asiento
         * @return result booleano con el resultado de la operacion
         */
        [HttpPut("syncAsiento")]
        public async Task<IActionResult> UpdateAsientos([FromBody] Asiento asiento) 
        {
            return Ok(await _asientoRepository.UpdateAsientos(asiento));
        }

        /**
         * Metodo de tipo GET que establece ciertos asientos como restringidos por el covid-19
         * @return result booleano con el resultado de la operacion
         */
        [HttpGet("Restriccion")]
        public async Task<IActionResult> Restriccion()
        {
            return Ok(await _asientoRepository.Restriccion());
        }

        /**
         * Metodo de tipo GET que habilita los asientos que estaban restringidos
         * @return result booleano con el resultado de la operacion
         */
        [HttpGet("Habilitado")]
        public async Task<IActionResult> Habilitado()
        {
            return Ok(await _asientoRepository.habilitado());
        }

        /**
         * Metodo de tipo DELETE que elimina los asientos de una sala
         * @param salaid Sala de la que se desea eliminar los asientos
         * @return result booleano con el resultado de la operacion
         */
        [HttpDelete("delete/{salaid}")]
        public async Task<IActionResult> DeletePelicula(int salaid)
        {

            await _asientoRepository.DeleteAsientos(salaid);

            return NoContent();
        }
    }
}
