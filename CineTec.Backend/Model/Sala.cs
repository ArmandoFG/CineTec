using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace CineTec.Backend.Model
{
    public class Sala
    {
        /**
         * Clase para definir las salas 
         * @author Harold Espinoza
         */
        public int id_sala { get; set; }
        public int filas { get; set; }
        public int capacidad { get; set; }
        public int columnas { get; set; }
        public int id_sucursal { get; set; }
    }
}
