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
    public class PeliculaController : Controller
    {
        private readonly IPeliculaRepository _peliculaRepository;

        public PeliculaController(IPeliculaRepository peliculaRepository)
        {
            _peliculaRepository = peliculaRepository;
        }

        /**
         * Metodo de tipo GET que obtine una lista de las peliculas disponibles
         * @return result lista de peliculas 
         */
        [HttpGet]
        public async Task<IActionResult> GetAllPeliculas() 
        {
            return Ok(await _peliculaRepository.GetAllPeliculas());
        }

        /**
         * Metodo de tipo GET que obtiene la lista de proyecciones
         * @return result lista de proyecciones 
         */
        [HttpGet("PPS")]
        public async Task<IActionResult> GetAllPPS()
        {
            return Ok(await _peliculaRepository.GetAllPPS());
        }

        /**
         * Metodo de tipo GET que obtiene la lista de proyecciones que tiene una pelicula
         * @param nombrepeli Nombre original de la pelicula que se desean las proyecciones
         * @return result lista de proyecciones de la pelicula dada
         */
        [HttpGet("PPStot/{nombrepeli}")]
        public async Task<IActionResult> GetAllPPSPelicula(string nombrepeli)
        {
            return Ok(await _peliculaRepository.GetAllPPSPelicula(nombrepeli));
        }

        /**
         * Metodo de tipo GET que obtiene los una lista de los directores almacenados 
         * @return result lista de directores almacenados
         */
        [HttpGet("Director")]
        public async Task<IActionResult> GetAllDirectores()
        {
            return Ok(await _peliculaRepository.GetAllDirectores());
        }

        /**
         * Metodo de tipo GET que obtiene los una lista de los protagonistas almacenados 
         * @return result lista de protagonistas almacenados
         */
        [HttpGet("Prota")]
        public async Task<IActionResult> GetAllProtas()
        {
            return Ok(await _peliculaRepository.GetAllProtagonistas());
        }

        /**
         * Metodo de tipo GET que obtiene los una lista de las clasificaciones registradas
         * @return result lista de clasificaciones registradas
         */
        [HttpGet("Clas")]
        public async Task<IActionResult> GetAllClas()
        {
            return Ok(await _peliculaRepository.GetAllClasificaciones());
        }

        /**
         * Metodo de tipo GET que obtiene los detalles de una pelicula
         * @param nombreOriginal Nombre original de la pelicula que se desean los detalles
         * @return result pelicula con sus detalles
         */
        [HttpGet("p/{nombreOriginal}")]
        public async Task<IActionResult> GetPeliculaDetails(string nombreOriginal)
        {
            return Ok(await _peliculaRepository.GetPeliculaDetails(nombreOriginal));
        }

        /**
         * Metodo de tipo POST que ingresa una nueva pelicula 
         * @param pelicula Obtiene del cuerpo del mensaje los atributos de la pelicula 
         * @return result booleano con el resultado de la operacion
         */
        [HttpPost("addmovie")]
        public async Task<IActionResult> CreatePelicula([FromBody] Pelicula pelicula)
        {
            if (pelicula == null)

                return BadRequest();
            if (!ModelState.IsValid)
                return BadRequest(ModelState);

            var created = await _peliculaRepository.InsertPelicula(pelicula);

            return Created("created", created);
        }

        /**
         * Metodo de tipo PUT que actualiza una pelicula
         * @param pelicula Obtiene del cuerpo del mensaje los atributos de la pelicula 
         * @return result booleano con el resultado de la operacion
         */
        [HttpPut("updatemovie")]
        public async Task<IActionResult> UpdatePelicula([FromBody] Pelicula pelicula)
        {
            if (pelicula == null)

                return BadRequest();
            if (!ModelState.IsValid)
                return BadRequest(ModelState);

            await _peliculaRepository.UpdatePelicula(pelicula);

            return NoContent();
        }

        /**
         * Metodo de tipo POST que ingresa una nueva proyeccion
         * @param pelicula Obtiene del cuerpo del mensaje los atributos de la proyeccion 
         * @return result booleano con el resultado de la operacion
         */
        [HttpPost("addpps")]
        public async Task<IActionResult> CreatePPS([FromBody] Pelicula_por_sala pelicula)
        {
            if (pelicula == null)

                return BadRequest();
            if (!ModelState.IsValid)
                return BadRequest(ModelState);

            var created = await _peliculaRepository.InsertPPS(pelicula);

            return Created("created", created);
        }

        /**
         * Metodo de tipo PUT modifica una proyeccion
         * @param pelicula Obtiene del cuerpo del mensaje los atributos de la proyeccion 
         * @return result booleano con el resultado de la operacion
         */
        [HttpPut("modpps")]
        public async Task<IActionResult> UpdatePPS([FromBody] Pelicula_por_sala pelicula)
        {
            if (pelicula == null)

                return BadRequest();
            if (!ModelState.IsValid)
                return BadRequest(ModelState);

            await _peliculaRepository.UpdatePPS(pelicula);

            return NoContent();
        }

        /**
         * Metodo de tipo DELETE que elimina una pelicula
         * @param nombre_pelicula Nombre de la pelicula que se quiere eliminar 
         * @return result booleano con el resultado de la operacion
         */
        [HttpDelete("quitmovie/{nombre_pelicula}")]
        public async Task<IActionResult> DeletePelicula(string nombre_pelicula)
        {
            
            await _peliculaRepository.DeletePelicula(nombre_pelicula);

            return NoContent();
        }
    }
}
