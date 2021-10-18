﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace CineTec.Backend.Model
{
    public class PPSTot
    {
        /**
         * Clase para definir las proyecciones de cierta pelicula
         * @author Harold Espinoza
         */
        public int sala_id { get; set; }
        public string nombre_pelicula { get; set; }
        public string hora { get; set; }
        public string nombre_cine { get; set; }
    }
}
