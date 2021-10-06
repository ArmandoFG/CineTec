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

        [HttpGet]
        public async Task<IActionResult> GetAllPeliculas() 
        {
            return Ok(await _peliculaRepository.GetAllPeliculas());
        }

        [HttpGet("p/{nombreOriginal}")]
        public async Task<IActionResult> GetPeliculaDetails(string nombreOriginal)
        {
            return Ok(await _peliculaRepository.GetPeliculaDetails(nombreOriginal));
        }

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

        [HttpPut]
        public async Task<IActionResult> UpdatePelicula([FromBody] Pelicula pelicula)
        {
            if (pelicula == null)

                return BadRequest();
            if (!ModelState.IsValid)
                return BadRequest(ModelState);

            await _peliculaRepository.UpdatePelicula(pelicula);

            return NoContent();
        }

        [HttpDelete("quitmovie/{nombre_pelicula}")]
        public async Task<IActionResult> DeletePelicula(string nombre_pelicula)
        {
            
            await _peliculaRepository.DeletePelicula(nombre_pelicula);

            return NoContent();
        }
    }
}
