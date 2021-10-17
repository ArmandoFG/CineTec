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
    public class ClienteController : Controller
    {
        private readonly IClienteRepository _clienteRepository;
        public ClienteController(IClienteRepository clienteRepository)
        {
            _clienteRepository = clienteRepository;
        }

        /**
         * Metodo de tipo GET que obtiene una lista de todos los clientes
         * @return clientes lista de clientes
         */
        [HttpGet]
        public async Task<IActionResult> GetAllClientes()
        {
            return Ok(await _clienteRepository.GetAllClientes());
        }

        /**
         * Metodo de tipo GET que obtiene los datos de un cliente 
         * @param cedula Cedula del cliente que se desea obtener la informacion
         * @return cliente Cliente con los detalles
         */
        [HttpGet("client/{cedula}")]
        public async Task<IActionResult> GetClienteDetails(int cedula)
        {
            return Ok(await _clienteRepository.GetClienteDetails(cedula));
        }

        /**
         * Metodo de tipo GET que obtiene los datos de un cliente 
         * @param usuario Usuario del cliente que se desea obtener la informacion
         * @return cliente con los detalles 
         */
        [HttpGet("usuario/{usuario}")]
        public async Task<IActionResult> GetClienteUser(string usuario)
        {
            return Ok(await _clienteRepository.GetClienteUser(usuario));
        }

        /**
         * Metodo de tipo GET hace la validacion del usuario y password de un cliente 
         * @param user usuario del cliente que desea acceder
         * @param pwd password del cliente que desea acceder
         * @return result booleano con el resultado de la operacion
         */
        [HttpGet("val/{user}/{pwd}")]
        public async Task<IActionResult> Validacion(string user, string pwd)
        {
            return Ok(await _clienteRepository.Validacion(user, pwd));
        }
    }
}
