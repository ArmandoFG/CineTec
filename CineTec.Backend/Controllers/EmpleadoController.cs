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

        [HttpGet("val/{user}/{pwd}")]
        public async Task<IActionResult> Validacion(string user, string pwd)
        {
            return Ok(await _empleadoRepository.Validacion(user,pwd));
        }

        [HttpPost("addemp")]
        public async Task<IActionResult> CreateEmp([FromBody] Empleados emp)
        {
            if (emp == null)

                return BadRequest();
            if (!ModelState.IsValid)
                return BadRequest(ModelState);

            var created = await _empleadoRepository.InsertEmpl(emp);

            return Created("created", created);
        }

        [HttpPut("modemp")]
        public async Task<IActionResult> UpdateAsientos([FromBody] Empleados emp)
        {
            return Ok(await _empleadoRepository.UpdateEmp(emp));
        }

        [HttpDelete("delete/{cedula}")]
        public async Task<IActionResult> DeletePelicula(int cedula)
        {

            await _empleadoRepository.DeleteEmp(cedula);

            return NoContent();
        }
    }
}
