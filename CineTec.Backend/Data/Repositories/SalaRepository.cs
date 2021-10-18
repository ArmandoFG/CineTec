using CineTec.Backend.Model;
using Dapper;
using Npgsql;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace CineTec.Backend.Data.Repositories
{
    public class SalaRepository : ISalaRepository
    {
        private PostgreSQLConfiguration _connectionString;

        public SalaRepository(PostgreSQLConfiguration connectionString)
        {
            _connectionString = connectionString;
        }

        protected NpgsqlConnection dbConnection()
        {
            return new NpgsqlConnection(_connectionString.ConnectionString);
        }

        /**
         * Metodo que obtiene todas las salas
         * @return lista de salas
         */
        public async Task<IEnumerable<Sala>> GetAllSalas()
        {
            var db = dbConnection();

            var sql = @"
                        SELECT id_sala,filas,capacidad,columnas,id_sucursal
                        FROM public.sala
                        ";

            return await db.QueryAsync<Sala>(sql, new { });
        }

        /**
         * Metodo que obtiene los detalles de una sala
         * @param salaId Id de la sala requerida
         * @return Sala con sus detalles
         */
        public async Task<Sala> GetSalaDetails(int salaId)
        {
            var db = dbConnection();

            var sql = @"
                        SELECT *
                        FROM public.sala
                        WHERE id_sala = @Sala_id
                        ";

            return await db.QueryFirstOrDefaultAsync<Sala>(sql, new { Sala_id = salaId });
        }

        /**
         * Metodo que obtiene todas las salas de una sucursal por su id
         * @param sucid Id de la sucursal requerida
         * @return lista de salas pertenecientes a esa sucursal
         */
        public async Task<IEnumerable<Sala>> GetSalasXSucursal(int Sucid)
        {
            var db = dbConnection();

            var sql = @"
                        SELECT *
                        FROM public.sala
                        WHERE id_sucursal = @idsuc
                        ";

            return await db.QueryAsync<Sala>(sql, new { idsuc = Sucid });

        }

        /**
         * Metodo que obtiene todas salas de una sucursal por su nombre 
         * @param nombreSuc nombre de la sucursal requerida
         */
        public async Task<IEnumerable<Sala>> GetSalasXNomSucursal(string nombreSuc)
        {
            var db = dbConnection();

            var sql = @"
                        SELECT id_sala,filas,capacidad,columnas, sala.id_sucursal
                        FROM public.sala JOIN public.sucursal ON sala.id_sucursal = sucursal.id_sucursal
                        WHERE nombre_cine = @NomSuc
                        ";

            return await db.QueryAsync<Sala>(sql, new { NomSuc = nombreSuc });
        }

        /**
         * Metodo que ingresa una nueva sala
         * @param sala sala a ingresar
         * @return resutl resultado de la operacion
         */
        public async Task<bool> InsertSala(Sala sala)
        {
            var db = dbConnection();

            var sql = @"
                        INSERT into sala(filas, capacidad, columnas, id_sucursal)
                        VALUES(@filas, @capacidad, @columnas, @id_sucursal)
                        ";

            var result = await db.ExecuteAsync(sql, new
            {
                sala.filas,
                sala.capacidad,
                sala.columnas,
                sala.id_sucursal,
            });

            var sql2 = @"
                        SELECT MAX(id_sala)
                        FROM sala
                        ";
            var result2 = await db.QueryFirstOrDefaultAsync<int>(sql2, new { });

            var sql3 = @"
                        INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
                        VALUES(@salareciente, 'A1', 'Disponible');  
                        INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
                        VALUES(@salareciente, 'A2', 'Disponible');  
                        INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
                        VALUES(@salareciente, 'A3', 'Disponible');  
                        INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
                        VALUES(@salareciente, 'A4', 'Disponible');  
                        INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
                        VALUES(@salareciente, 'A5', 'Disponible');  
                        INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
                        VALUES(@salareciente, 'A6', 'Disponible');  
                        INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
                        VALUES(@salareciente, 'A7', 'Disponible');  
                        INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
                        VALUES(@salareciente, 'A8', 'Disponible');  
                        INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
                        VALUES(@salareciente, 'A9', 'Disponible');  
                        INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
                        VALUES(@salareciente, 'A10', 'Disponible');  
                        INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
                        VALUES(@salareciente, 'A11', 'Disponible');  
                        INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
                        VALUES(@salareciente, 'A12', 'Disponible');  
                        INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
                        VALUES(@salareciente, 'B1', 'Disponible');  
                        INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
                        VALUES(@salareciente, 'B2', 'Disponible');  
                        INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
                        VALUES(@salareciente, 'B3', 'Disponible');  
                        INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
                        VALUES(@salareciente, 'B4', 'Disponible');  
                        INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
                        VALUES(@salareciente, 'B5', 'Disponible');  
                        INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
                        VALUES(@salareciente, 'B6', 'Disponible');  
                        INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
                        VALUES(@salareciente, 'B7', 'Disponible');  
                        INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
                        VALUES(@salareciente, 'B8', 'Disponible');  
                        INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
                        VALUES(@salareciente, 'B9', 'Disponible');  
                        INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
                        VALUES(@salareciente, 'B10', 'Disponible');  
                        INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
                        VALUES(@salareciente, 'B11', 'Disponible');  
                        INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
                        VALUES(@salareciente, 'B12', 'Disponible');  
                         INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
                        VALUES(@salareciente, 'C1', 'Disponible');  
                        INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
                        VALUES(@salareciente, 'C2', 'Disponible');  
                        INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
                        VALUES(@salareciente, 'C3', 'Disponible');  
                        INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
                        VALUES(@salareciente, 'C4', 'Disponible');  
                        INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
                        VALUES(@salareciente, 'C5', 'Disponible');  
                        INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
                        VALUES(@salareciente, 'C6', 'Disponible');  
                        INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
                        VALUES(@salareciente, 'C7', 'Disponible');  
                        INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
                        VALUES(@salareciente, 'C8', 'Disponible');  
                        INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
                        VALUES(@salareciente, 'C9', 'Disponible');  
                        INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
                        VALUES(@salareciente, 'C10', 'Disponible');  
                        INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
                        VALUES(@salareciente, 'C11', 'Disponible');  
                        INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
                        VALUES(@salareciente, 'C12', 'Disponible'); 
                        INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
                        VALUES(@salareciente, 'D1', 'Disponible');  
                        INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
                        VALUES(@salareciente, 'D2', 'Disponible');  
                        INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
                        VALUES(@salareciente, 'D3', 'Disponible');  
                        INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
                        VALUES(@salareciente, 'D4', 'Disponible');  
                        INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
                        VALUES(@salareciente, 'D5', 'Disponible');  
                        INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
                        VALUES(@salareciente, 'D6', 'Disponible');  
                        INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
                        VALUES(@salareciente, 'D7', 'Disponible');  
                        INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
                        VALUES(@salareciente, 'D8', 'Disponible');  
                        INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
                        VALUES(@salareciente, 'D9', 'Disponible');  
                        INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
                        VALUES(@salareciente, 'D10', 'Disponible');  
                        INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
                        VALUES(@salareciente, 'D11', 'Disponible');  
                        INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
                        VALUES(@salareciente, 'D12', 'Disponible'); 
                        INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
                        VALUES(@salareciente, 'E1', 'Disponible');  
                        INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
                        VALUES(@salareciente, 'E2', 'Disponible');  
                        INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
                        VALUES(@salareciente, 'E3', 'Disponible');  
                        INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
                        VALUES(@salareciente, 'E4', 'Disponible');  
                        INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
                        VALUES(@salareciente, 'E5', 'Disponible');  
                        INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
                        VALUES(@salareciente, 'E6', 'Disponible');  
                        INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
                        VALUES(@salareciente, 'E7', 'Disponible');  
                        INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
                        VALUES(@salareciente, 'E8', 'Disponible');  
                        INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
                        VALUES(@salareciente, 'E9', 'Disponible');  
                        INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
                        VALUES(@salareciente, 'E10', 'Disponible');  
                        INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
                        VALUES(@salareciente, 'E11', 'Disponible');  
                        INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
                        VALUES(@salareciente, 'E12', 'Disponible'); 
                         INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
                        VALUES(@salareciente, 'F1', 'Disponible');  
                        INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
                        VALUES(@salareciente, 'F2', 'Disponible');  
                        INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
                        VALUES(@salareciente, 'F3', 'Disponible');  
                        INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
                        VALUES(@salareciente, 'F4', 'Disponible');  
                        INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
                        VALUES(@salareciente, 'F5', 'Disponible');  
                        INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
                        VALUES(@salareciente, 'F6', 'Disponible');  
                        INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
                        VALUES(@salareciente, 'F7', 'Disponible');  
                        INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
                        VALUES(@salareciente, 'F8', 'Disponible');  
                        INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
                        VALUES(@salareciente, 'F9', 'Disponible');  
                        INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
                        VALUES(@salareciente, 'F10', 'Disponible');  
                        INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
                        VALUES(@salareciente, 'F11', 'Disponible');  
                        INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
                        VALUES(@salareciente, 'F12', 'Disponible'); 
                        ";
            var result3 = await db.ExecuteAsync(sql3, new {salareciente = result2  });

            return result3 > 0;
            
        }

        /**
         * Metodo que elimina una sala
         * @param salaid Id de la sala a eliminar
         */
        public async Task<bool> DeleteSala(int salaid)
        {
            var db = dbConnection();

            var sql = @"
                        DELETE
                        FROM public.sala
                        WHERE id_sala = @Salaid
    
                        ";

            var result = await db.ExecuteAsync(sql, new { Salaid = salaid });

            return result > 0;
        }
    }
}
