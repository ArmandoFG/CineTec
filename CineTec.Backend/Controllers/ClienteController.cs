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
        [HttpGet]
        public async Task<IActionResult> GetAllClientes()
        {
            return Ok(await _clienteRepository.GetAllClientes());
        }

        [HttpGet("client/{cedula}")]
        public async Task<IActionResult> GetClienteDetails(int cedula)
        {
            return Ok(await _clienteRepository.GetClienteDetails(cedula));
        }

        [HttpGet("usuario/{usuario}")]
        public async Task<IActionResult> GetClienteUser(string usuario)
        {
            return Ok(await _clienteRepository.GetClienteUser(usuario));
        }

        [HttpGet("val/{user}/{pwd}")]
        public async Task<IActionResult> Validacion(string user, string pwd)
        {
            return Ok(await _clienteRepository.Validacion(user, pwd));
        }
    }
}
