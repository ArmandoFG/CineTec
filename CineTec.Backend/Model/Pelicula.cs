using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace CineTec.Backend.Model
{
    public class Pelicula
    {
        /**
         * Clase para definir las peliculas
         * @author Harold Espinoza
         */
        public string nombre_original { get; set; }
        public string nombre { get; set; }
        public int duracion { get; set; }
        public string imagen { get; set; }
        public int precio_menores { get; set; }
        public int precio_adultos { get; set; }
        public int precio_tercera_edad { get; set; }


    }
}
