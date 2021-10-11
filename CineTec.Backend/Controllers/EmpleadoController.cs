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
    public class EmpleadoController : Controller
    {
        private readonly IEmpleadoRepository _empleadoRepository;
        public EmpleadoController(IEmpleadoRepository empleadoRepository)
        {
            _empleadoRepository = empleadoRepository;
        }
        [HttpGet]
        public async Task<IActionResult> GetAllEmpleados()
        {
            return Ok(await _empleadoRepository.GetAllEmpleados());
        }

        [HttpGet("e/{cedula}")]
        public async Task<IActionResult> GetEmpleadoDetails(int cedula)
        {
            return Ok(await _empleadoRepository.GetEmpleadoDetails(cedula));
        }
    }
}
