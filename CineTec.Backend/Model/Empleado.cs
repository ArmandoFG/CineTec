using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace CineTec.Backend.Model
{
    public class Empleados
    {
        public string nombre1 { get; set; }
        public string nombre2 { get; set; }
        public string Apellido1 { get; set; }
        public string Apellido2 { get; set; }
        public int cedula { get; set; }
        public string fecha_de_nacimiento { get; set; }

        public string fecha_ingreso { get; set; }

        public int numero_telefono { get; set; }
        public int edad { get; set; }
        public string pass { get; set; }
        public string usuario { get; set; }
        public int id_sucursal { get; set; }
        public string rol_name { get; set; }
    }
}
