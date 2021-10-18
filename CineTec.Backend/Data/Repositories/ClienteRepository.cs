using CineTec.Backend.Model;
using Dapper;
using Npgsql;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace CineTec.Backend.Data.Repositories
{
    public class ClienteRepository : IClienteRepository
    {
        private PostgreSQLConfiguration _connectionString;

        public ClienteRepository(PostgreSQLConfiguration connectionString)
        {
            _connectionString = connectionString;
        }

        protected NpgsqlConnection dbConnection()
        {
            return new NpgsqlConnection(_connectionString.ConnectionString);
        }

        /**
         * Metodo que obtiene los detalles de un cliente 
         * @param cedula cedula del cliente requerido
         * @return cliente con sus detalles 
         */
        public async Task<Cliente> GetClienteDetails(int cedula)
        {
            var db = dbConnection();

            var sql = @"
                        SELECT cedula,edad,nombre,fecha_nacimiento, numero_telefono,usuario,pass,id_sucursal
                        FROM public.cliente
                        WHERE cedula = @Cedula
                        ";

            return await db.QueryFirstOrDefaultAsync<Cliente>(sql, new { Cedula = cedula });
        }


        /**
         * Metodo que obtiene todos los clientes
         * @return lista de clientes 
         */
        public async Task<IEnumerable<Cliente>> GetAllClientes()
        {
            var db = dbConnection();

            var sql = @"
                        SELECT *
                        FROM public.cliente
                        ";

            return await db.QueryAsync<Cliente>(sql, new { });
        }


        /**
         * Metodo que obtiene un cliente por su usuario
         * @usuario Usuario del cliente requerido
         * @return cliente con sus detalles 
         */
        public async Task<Cliente> GetClienteUser(string usuario)
        {
            var db = dbConnection();

            var sql = @"
                        SELECT cedula,edad,nombre,fecha_nacimiento, numero_telefono,usuario,pass,id_sucursal
                        FROM public.cliente
                        WHERE usuario = @Usuario
                        ";

            return await db.QueryFirstOrDefaultAsync<Cliente>(sql, new { Usuario = usuario });
        }

        /**
         * Metodo que valida el ingreso de un usuario
         * @param user Usuario del cliente
         * @param pwd password del cliente 
         * @return result resultado de la operacion
         */
        public async Task<bool> Validacion(string user, string pwd)
        {
            var db = dbConnection();

            var sql = @"
                        SELECT usuario, pass
                        FROM public.cliente
                        WHERE usuario = @Usuario AND pass = @Pwd
                        ";

            var result = await db.QueryFirstOrDefaultAsync<Cliente>(sql, new { Usuario = user, Pwd = pwd });

            if (result == null)
            {
                return false;
            }
            if (result.usuario == user && result.pass == pwd)
            {
                return true;
            }
            else
            {
                return false;
            }
        }
    }
}
