using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace CineTec.Backend.Model
{
    public class Pelicula_por_sala
    {
        /**
         * Clase para definir las peliculas por sala
         * @author Harold Espinoza
         */
        public int id_en_cartelera { get; set; }
        public int sucursal_id { get; set; }
        public int sala_id { get; set; }
        public string nombre_pelicula { get; set; }
        public string hora { get; set; }
       

    }
}
