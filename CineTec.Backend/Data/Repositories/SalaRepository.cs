﻿using CineTec.Backend.Model;
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
        public async Task<IEnumerable<Sala>> GetAllSalas()
        {
            var db = dbConnection();

            var sql = @"
                        SELECT id_sala,filas,capacidad,columnas,id_sucursal
                        FROM public.sala
                        ";

            return await db.QueryAsync<Sala>(sql, new { });
        }

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
    }
}