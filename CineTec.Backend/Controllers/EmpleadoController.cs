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

        /**
         * Metodo de tipo GET que obtiene una lista de los empleados
         * @return empleados lista de empleados 
         */
        [HttpGet]
        public async Task<IActionResult> GetAllEmpleados()
        {
            return Ok(await _empleadoRepository.GetAllEmpleados());
        }

        /**
         * Metodo de tipo GET que obtiene los datos de un empleado
         * @param cedula Cedula del empleado que se desea obtener la informacion
         * @return empleado empleado con sus detalles
         */
        [HttpGet("e/{cedula}")]
        public async Task<IActionResult> GetEmpleadoDetails(int cedula)
        {
            return Ok(await _empleadoRepository.GetEmpleadoDetails(cedula));
        }

        /**
         * Metodo de tipo GET hace la validacion del usuario y password de un empleado 
         * @param user usuario del empleado que desea acceder
         * @param pwd password del empleado que desea acceder
         * @return result booleano con el resultado de la operacion
         */
        [HttpGet("val/{user}/{pwd}")]
        public async Task<IActionResult> Validacion(string user, string pwd)
        {
            return Ok(await _empleadoRepository.Validacion(user,pwd));
        }

        /**
         * Metodo de tipo POST que inserta un nuevo empleado
         * @param emp Obtiene del cuerpo del mensaje los atributos del empleado nuevo
         * @return result booleano con el resultado de la operacion
         */
        [HttpPost("addempleado")]
        public async Task<IActionResult> CreateEmpleado([FromBody] Empleados emp)
        {
            if (emp == null)

                return BadRequest();
            if (!ModelState.IsValid)
                return BadRequest(ModelState);

            var created = await _empleadoRepository.InsertEmpl(emp);

            return Created("created", created);
        }

        /**
         * Metodo de tipo PUT que actualiza los datos de un empleado
         * @param emp Obtiene del cuerpo del mensaje los atributos del empleado a modificar 
         * @return result booleano con el resultado de la operacion
         */
        [HttpPut("modemp")]
        public async Task<IActionResult> UpdateAsientos([FromBody] Empleados emp)
        {
            return Ok(await _empleadoRepository.UpdateEmp(emp));
        }

        /**
         * Metodo de tipo DELETE que elimina un empleado
         * @param cedula Cedula del empleado que se desea eliminar
         * @return result booleano con el resultado de la operacion
         */
        [HttpDelete("delete/{cedula}")]
        public async Task<IActionResult> DeletePelicula(int cedula)
        {

            await _empleadoRepository.DeleteEmp(cedula);

            return NoContent();
        }
    }
}
