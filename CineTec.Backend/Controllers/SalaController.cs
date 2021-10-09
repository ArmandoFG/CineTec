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
    public class SalaController : Controller
    {
        private readonly ISalaRepository _salaRepository;
        public SalaController(ISalaRepository salaRepository)
        {
            _salaRepository = salaRepository;
        }

        [HttpGet]
        public async Task<IActionResult> GetAllSalas ()
        {
            return Ok(await _salaRepository.GetAllSalas());
        }

        [HttpGet("s/{salaId}")]
        public async Task<IActionResult> GetSalaDetails(int salaId)
        {
            return Ok(await _salaRepository.GetSalaDetails(salaId));
        }
    }
}
