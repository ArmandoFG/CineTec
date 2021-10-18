using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace CineTec.Backend.Model
{
    public class Asiento
    {
        /**
         * Clase para definir los asientos 
         * @author Harold Espinoza
         */
        public int salaid { get; set; }
        public string asientoid { get; set; }
        public string disponibilidad { get;set; }
    }
}
