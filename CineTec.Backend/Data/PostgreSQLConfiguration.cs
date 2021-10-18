using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace CineTec.Backend.Data
{
    /**
     * Clase de la conexion al postgresql 
     */
    public class PostgreSQLConfiguration
    {
        /**
         * Inicializa la conexion con la base de datos
         */
        public PostgreSQLConfiguration(string connectionString) => ConnectionString = connectionString;

        public string ConnectionString { get; set; }
    }
    
}
