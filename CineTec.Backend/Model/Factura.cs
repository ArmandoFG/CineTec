﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace CineTec.Backend.Model
{
    public class Factura
    {
        public int clave { get; set; }
        public int consecutivo { get; set; }
        public int factId { get; set; }
        public string detalle { get; set; }
        public string fecha { get; set; }
        public string cedula_cliente { get; set; }

    }
}