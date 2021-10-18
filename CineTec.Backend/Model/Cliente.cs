using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace CineTec.Backend.Model
{
    public class Cliente
    {
        /**
         * Clase para definir los clientes
         * @author Harold Espinoza
         */
        public int cedula { get; set; }
        public int edad { get; set; }
        public string nombre { get; set; }
        public string fecha_nacimiento { get; set; }
        public int numero_telefono { get; set; }
        public string pass { get; set; }
        public string usuario { get; set; }
        public int id_sucursal{ get; set; }
    }
}
