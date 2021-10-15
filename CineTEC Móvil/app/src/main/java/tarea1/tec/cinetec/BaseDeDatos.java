package tarea1.tec.cinetec;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;

import androidx.annotation.Nullable;

public class BaseDeDatos extends SQLiteOpenHelper {

    public static final String DATABASE = "Datos";





    /**
     * Datos necesarios para la tabla pelicula
     */

    public static final String TABLE_PELICULA = "Pelicula";
    public static final String NOMBRE0 = "nombre_original";
    public static final String NOMBRE = "nombre";
    public static final String DURACION = "duracion";
    public static final String IMAGEN = "imagen";
    public static final String PRECIOMEN = "precio_menores";
    public static final String PRECIOADUL = "precio_adultos";
    public static final String PRECIOTER = "precio_tercera_edad";

    /**
     *Datos necesarios para el cliente
     */
    public static final String TABLA_CLIENTE = "Cliente";
    public static final String CEDULA = "cedula";
    public static final String EDAD = "edad";
    public static final String NOMBREC = "nombre";
    public static final String FECHAN = "fecha_nacimiento";
    public static final String NUMTEL = "numero_telefono";
    public static final String PASSC = "pass";
    public static final String USERC = "usuario";
    public static final String IDSUCL = "id_sucursal";


    /**
     *Datos necesarios para la sucursal
     */

    public static final String Tabla_Sucursal = "Sucursal";
    public static final String IDSUCURSAL = "id_sucursal";
    public static final String UBICACION = "ubicacion";
    public static final String NOMBRECINE = "nombre_cine";
    public static final String CANTIDADSALAS = "cantidad_salas";

    /**
     *Datos necesarios para la Sala
     */
    public static final String Tabla_Sala = "Sala";
    public static final String IDSALA = "id_sala";
    public static final String FILAS = "filas";
    public static final String CAPACIDAD = "capacidad";
    public static final String COLUMNAS = "columnas";
    public static final String IDSUCSALA = "id_sucursal";

    /**
     *Datos necesarios para la pelicula por sala
     */
    public static final String TablaPeliSala = "Pelicula_por_sala";
    public static final String IDCAR = "id_en_cartelera";
    public static final String SALA_SUCURSAL = "sucursal_id";
    public static final String SALAID = "sala_id";
    public static final String NOMBREPELICULA = "nombre_pelicula";
    public static final String HORA = "hora";

    /**
     *Datos necesarios para la Clasificacion
     */
    public static final String Tabla_Clasificacion = "Clasificacion";
    public static final String TIPO_CLA = "tipo_clasificacion";
    public static final String NOMBREPELISALA = "nombre_pelicula";

    /**
     *Datos necesarios para el Director
     */
    public static final String Tabla_Director = "Director";
    public static final String NombreDIR = "nombre";
    public static final String Nombre_Pelicula = "nombre_pelicula";

    /**
     *Datos necesarios para el Protagonista
     */
    public static final String Tabla_Protagonista = "Protagonista";
    public static final String NombrePro = "nombre";
    public static final String NomPeliProtagonista = "nombre_pelicula";

    /**
     *
     * Datos necesarios para Factura
     */

    public static final String TABLA_FACTURA = "Factura";
    public static final String CLAVE = "clave";
    public static final String CONSECUTIVO = "consecutivo";
    public static final String FACT_ID = "fact_id";
    public static final String DETALLE = "detalle";
    public static final String FECHA = "fecha";
    public static final String CEDULACLIENTEFAC = "cedula_cliente";


    /**
     *
     * Datos necesarios para Asiento
     */
    public static final String Tabla_Asiento = "Asiento";
    public static final String SALA = "Salaid";
    public static final String ASID = "AsientoID";
    public static final String DISPOIBILIDAD = "Disponibilidad";

    /**
     *
     * Datos necesarios para Horas
     */
    public static final String Tabla_Horas = "Horas";
    public static final String Hora = "hora";





    public BaseDeDatos(@Nullable Context context) {
        super (context, DATABASE, null, 1);
    }

    /**
     *
     * @param db Base de datos
     */

    @Override
    public void onCreate(SQLiteDatabase db) {

        /**
         * Creando tabla pelicula
         */
        db.execSQL ("CREATE TABLE " + TABLE_PELICULA + "(" + NOMBRE0 + " TEXT PRIMARY KEY NOT NULL, " + NOMBRE + " TEXT, " + DURACION + " INTEGER NOT NULL, " + IMAGEN + " TEXT, " + PRECIOMEN + " INTEGER, " + PRECIOADUL + " INTEGER, " + PRECIOTER + " INTEGER)");
        /**
         * Creando tabla Cliente
         */
        db.execSQL ("CREATE TABLE " + TABLA_CLIENTE + "(" + CEDULA + " INTEGER PRIMARY KEY NOT NULL, " + EDAD + " INTEGER, " + NOMBREC + " TEXT NOT NULL, " + FECHAN + " TEXT NOT NULL, " + NUMTEL + " INTEGER, " + PASSC + " TEXT NOT NULL, " + USERC + " TEXT NOT NULL, "  + IDSUCL + " INTEGER , "  + "FOREIGN KEY("+IDSUCL+") REFERENCES "+Tabla_Sucursal+"("+IDSUCURSAL+"))");
        /**
         * Creando tabla Sucursal
         */
        db.execSQL ("CREATE TABLE " + Tabla_Sucursal + "(" + IDSUCURSAL + " INTEGER PRIMARY KEY NOT NULL, " + UBICACION + " TEXT NOT NULL, " + NOMBRECINE + " TEXT NOT NULL, " + CANTIDADSALAS + " INTEGER NOT NULL)");
        /**
         * Creando tabla Sala
         */
        db.execSQL ("CREATE TABLE " + Tabla_Sala + "(" + IDSALA + " INTEGER PRIMARY KEY NOT NULL, " + FILAS + " INTEGER NOT NULL, " + CAPACIDAD + " INTEGER NOT NULL, " + COLUMNAS + " INTEGER NOT NULL, " + IDSUCSALA + " INTEGER NOT NULL, " + "FOREIGN KEY("+IDSUCSALA+") REFERENCES "+Tabla_Sucursal+"("+IDSUCURSAL+"))");
        /**
         * Creando tabla Pelicula por sala
         */
        db.execSQL ("CREATE TABLE " + TablaPeliSala + "("+ IDCAR + " INTEGER, " + SALA_SUCURSAL + " INTEGER, " + SALAID + " INTEGER, " + NOMBREPELICULA + " TEXT, " + HORA + " TEXT, " + "FOREIGN KEY("+SALAID+") REFERENCES "+Tabla_Sala+"("+IDSALA+"), " + "FOREIGN KEY("+NOMBREPELICULA+") REFERENCES "+TABLE_PELICULA+"("+NOMBRE0+"), " + "FOREIGN KEY("+SALA_SUCURSAL+") REFERENCES "+Tabla_Sucursal+"("+IDSUCURSAL+"))");
        /**
         * Creando tabla Clasificacion
         */
        db.execSQL ("CREATE TABLE " + Tabla_Clasificacion + "(" + TIPO_CLA + " TEXT PRIMARY KEY NOT NULL, " + NOMBREPELISALA + " TEXT, " + "FOREIGN KEY("+NOMBREPELISALA+") REFERENCES "+TABLE_PELICULA+"("+NOMBRE0+"))");
        /**
         * Creando tabla Director
         */
        db.execSQL ("CREATE TABLE " + Tabla_Director + "(" + NombreDIR + " TEXT PRIMARY KEY NOT NULL, " + Nombre_Pelicula + " TEXT, " + "FOREIGN KEY("+Nombre_Pelicula+") REFERENCES "+TABLE_PELICULA+"("+NOMBRE0+"))");
        /**
         * Creando tabla Protagonista
         */
        db.execSQL ("CREATE TABLE " + Tabla_Protagonista + "(" + NombrePro + " TEXT PRIMARY KEY NOT NULL, " + NomPeliProtagonista + " TEXT, " + "FOREIGN KEY("+NomPeliProtagonista+") REFERENCES "+TABLE_PELICULA+"("+NOMBRE0+"))");
        /**
         * Creando tabla factura
         */
        db.execSQL ("CREATE TABLE " + TABLA_FACTURA + "(" + CLAVE + " INTEGER NOT NULL, " + CONSECUTIVO + " INTEGER NOT NULL, "+ FACT_ID + " INTEGER NOT NULL, "+ DETALLE + " TEXT NOT NULL, "+ FECHA + " TEXT NOT NULL, " + CEDULACLIENTEFAC + " INTEGER, " + "PRIMARY KEY("+ CLAVE +", "+ CONSECUTIVO +", "+ FACT_ID +"), "  + "FOREIGN KEY("+CEDULACLIENTEFAC+") REFERENCES "+TABLA_CLIENTE+"("+CEDULA+"))");
    /**
     * Creando tabla Asientos
     */
        db.execSQL ("CREATE TABLE " + Tabla_Asiento + "(" + SALA + " INTEGER, " + ASID + " TEXT, "+ DISPOIBILIDAD + " TEXT, " + "PRIMARY KEY("+ SALA +", "+ ASID +"), "+ "FOREIGN KEY("+SALA+") REFERENCES "+Tabla_Sala+"("+IDSALA+"))");
    /**
     * Creando tabla Hora
     */
        db.execSQL ("CREATE TABLE " + Tabla_Horas + "(" + Hora + " TEXT)");
    }


    @Override
    public void onUpgrade(SQLiteDatabase sqLiteDatabase, int oldVersion, int newVersion) {

    }




    /**
     *
     * @param condition Valor que se quiere obtener de la tabla cliente
     * @return  Valores de la tabla
     */

    public Cursor ObtenerCliente(String condition) {
        String columnas[] = {
                CEDULA,
                EDAD,
                NOMBREC,
                FECHAN,
                NUMTEL,
                IDSUCL,
                USERC,
                PASSC

        };
        String[] args = new String[]{condition};
        Cursor c = this.getReadableDatabase ().query (TABLA_CLIENTE, columnas, USERC + "=?", args, null, null, null);
        return c;
    }

    public Cursor ObtenerPeliculasSucursales(String condition) {
        String columnas[] = {
                SALA_SUCURSAL,
                SALAID,
                NOMBREPELICULA,
                HORA

        };
        String[] args = new String[]{condition};
        Cursor c = this.getReadableDatabase ().query (TablaPeliSala, columnas, USERC + "=?", args, null, null, null);
        return c;
    }

    /**
     *
     * @param condition Valor que desea de la tabla
     * @return cursor con los datos
     */
    public Cursor Obtenerid_sucursal(String condition){
        String columnas[] = {
                IDSUCURSAL
        };
        String[] args = new String[]{condition};
        Cursor c = this.getReadableDatabase ().query (Tabla_Sucursal, columnas, UBICACION + "=?", args, null, null, null);
        return c;
    }

    /**
     *
     * @param condition String condicion de las peliculas que se quiere
     * @return Cursor de las peliculas
     */

    public Cursor ObtenerPeliID(String condition){
        String columnas[] = {
                NOMBREPELICULA
        };
        String[] args = new String[]{condition};
        Cursor c = this.getReadableDatabase ().query (TablaPeliSala, columnas, SALA_SUCURSAL + "=?", args, null, null, null);
        return c;
    }

    /**
     *
     * @param condition String condicion de los horas de una pelicula que se quiere
     * @return Cursor horas
     */

    public Cursor ObtenerPeliHoras(String condition){
        String columnas[] = {
                HORA,
                SALAID,
                SALA_SUCURSAL
        };
        String[] args = new String[]{condition};
        Cursor c = this.getReadableDatabase ().query (TablaPeliSala, columnas, NOMBREPELICULA + "=?", args, null, null, null);
        return c;
    }

    /**
     *
     * @param condition String condicion de las horas que se quiere
     * @return Cursor de las horas
     */
    public Cursor ObtenerHoras(String condition){
        String columnas[] = {
                NOMBREPELICULA,
                HORA

        };
        String[] args = new String[]{condition};
        Cursor c = this.getReadableDatabase ().query (TablaPeliSala, columnas, SALA_SUCURSAL + "=?", args, null, null, null);
        return c;
    }

    /**
     *
     * @param condition String condicion de los precios que se quiere
     * @return Cursor con los precios
     */

    public Cursor ObtenerPrecios(String condition){
        String columnas[] = {
                PRECIOMEN,
                PRECIOADUL,
                PRECIOTER
        };
        String[] args = new String[]{condition};
        Cursor c = this.getReadableDatabase ().query (TABLE_PELICULA, columnas, NOMBRE0 + "=?", args, null, null, null);
        return c;
    }

    /**
     *
     * @param condition String condicion de los asientos que se quiere
     * @return Cursor todos los asientos
     */

    public Cursor ObtenerAsientosSala(String condition){
        String columnas[] = {
                ASID,
                DISPOIBILIDAD
        };
        String[] args = new String[]{condition};
        Cursor c = this.getReadableDatabase ().query (Tabla_Asiento, columnas, SALA + "=?", args, null, null, null);
        return c;
    }





    /**
     *
     * @param cedula Entero cédula del cliente
     * @param edad  Entero edad cliente
     * @param nombre String nombre del cliente
     * @param fecha Fecha de nacimiento
     * @param numero    Entero numero del cliente
     * @param idsucursal    Entero identificación de la sucursal
     * @param usuario   String Usuario para iniciar sesion
     * @param pass  String contraseña del cliente
     */
    public void AgregarCliente(int cedula, int edad, String nombre, String fecha, int numero, int idsucursal, String usuario, String pass) {
        ContentValues valores = new ContentValues ();
        valores.put (CEDULA, cedula);
        valores.put (EDAD, edad);
        valores.put (NOMBREC, nombre);
        valores.put (FECHAN, fecha);
        valores.put (NUMTEL, numero);
        valores.put (IDSUCL, idsucursal);
        valores.put (USERC, usuario);
        valores.put (PASSC, pass);
        this.getWritableDatabase ().insert (TABLA_CLIENTE, null, valores);


    }

    /**
     *
     * @param nombre_original String nombre original de la pelicula
     * @param nombre    String nombre de la pelicula
     * @param duracion  String duración de la pelicula
     * @param imagen    Array de byte de la imagen de la pelicula
     * @param precio_menores    Entero precio de menores de edad
     * @param precio_adultos    Entero precio de adultos
     * @param precio_terceraEdad Entero precio de la tercera edad
     */
    public void AgregarPelicula(String nombre_original, String nombre, String duracion, String imagen, int precio_menores, int precio_adultos, int precio_terceraEdad) {
        try {
            ContentValues valores = new ContentValues();
            valores.put(NOMBRE0, nombre_original);
            valores.put(NOMBRE, nombre);
            valores.put(DURACION, duracion);
            valores.put(IMAGEN, imagen);
            valores.put(PRECIOMEN, precio_menores);
            valores.put(PRECIOADUL, precio_adultos);
            valores.put(PRECIOTER, precio_terceraEdad);
            this.getWritableDatabase().insert(TABLE_PELICULA, null, valores);
        }catch (Exception e){

        }

    }


    /**
     *
     * @param id entero id sucursal
     * @param ubicacion string ubicación de la sucursal
     * @param cine string cine de la sucursal
     * @param salas entero salas del cine
     */
    public void AgregarSucursal(int id, String ubicacion, String cine, int salas) {
        ContentValues valores = new ContentValues ();
        valores.put (IDSUCURSAL, id);
        valores.put (UBICACION, ubicacion);
        valores.put (NOMBRECINE, cine);
        valores.put (CANTIDADSALAS, salas);
        this.getWritableDatabase ().insert (Tabla_Sucursal, null, valores);

    }

    /**
     *
     * @param clave entero, clave de la factura
     * @param consecutivo entero, consecutivo de la factura
     * @param fac entero, numero de factura
     * @param detalle string, detalle de la factura
     * @param FECH string Fecha de la factura
     * @param cedula entero, cédula del cliente
     */

    public void AgregarFactura(int clave, int consecutivo, int fac, String detalle, String FECH, int cedula) {
        ContentValues valores = new ContentValues ();
        valores.put (CLAVE, clave);
        valores.put (CONSECUTIVO, consecutivo);
        valores.put (FACT_ID, fac);
        valores.put (DETALLE, detalle);
        valores.put (FECHA, FECH);
        valores.put (CEDULACLIENTEFAC, cedula);
        this.getWritableDatabase ().insert (TABLA_FACTURA, null, valores);

    }

    /**
     *
     * @param idSala int ID Sala
     * @param filas int Filas de la sala
     * @param capacidad int Capacidad de la sala
     * @param columnas int columnas de la sala
     * @param idSuc int ID sucursal
     */
    public void AgregarSala(int idSala, int filas, int capacidad, int columnas, int idSuc){
        ContentValues valores = new ContentValues ();
        valores.put (IDSALA, idSala);
        valores.put (FILAS, filas);
        valores.put (CAPACIDAD, capacidad);
        valores.put (COLUMNAS, columnas);
        valores.put (IDSUCSALA, idSuc);
        this.getWritableDatabase ().insert (Tabla_Sala, null, valores);

    }

    /**
     *
     * @param idCar Int ID de la cartelera
     * @param SucID int ID sucursal
     * @param SalaID int ID sala
     * @param Nombre_peli String Nombre de la pelicula
     * @param hora String Hora de la pelicula
     */

    public void AgreparPeliPorSala(int idCar, int SucID, int SalaID, String Nombre_peli, String hora){
        ContentValues valores = new ContentValues ();
        valores.put (IDCAR, idCar);
        valores.put (SALA_SUCURSAL, SucID);
        valores.put (SALAID, SalaID);
        valores.put (NOMBREPELICULA, Nombre_peli);
        valores.put (HORA, hora);
        this.getWritableDatabase ().insert (TablaPeliSala, null, valores);

    }

    /**
     *
     * @param Clas String Clasificacion de la pelicula
     * @param Nombre_peli String Nombre de la pelicula
     */
    public void AgregarClasificacion(String Clas, String Nombre_peli){
        ContentValues valores = new ContentValues ();
        valores.put (TIPO_CLA, Clas);
        valores.put (NOMBREPELISALA, Nombre_peli);
        this.getWritableDatabase ().insert (Tabla_Clasificacion, null, valores);

    }

    /**
     *
     * @param nombre String Nombre del director
     * @param Nombre_peli String Nombre de la pelicula
     */
    public void AgregarDirector(String nombre, String Nombre_peli){
        ContentValues valores = new ContentValues ();
        valores.put (NombreDIR, nombre);
        valores.put (Nombre_Pelicula, Nombre_peli);
        this.getWritableDatabase ().insert (Tabla_Director, null, valores);
    }

    /**
     *
     * @param nombre String nombre del protagonista
     * @param Nombre_peli String Nombre de la pelicula
     */
    public void AgregarProtagonista(String nombre, String Nombre_peli){
        ContentValues valores = new ContentValues ();
        valores.put (NombrePro, nombre);
        valores.put (NomPeliProtagonista, Nombre_peli);
        this.getWritableDatabase ().insert (Tabla_Protagonista, null, valores);
    }

    /**
     *
     * @param sala int Sala de la pelicula
     * @param asiento String Id del asiento
     * @param disponibilidad String disponibilidad del asiento
     */
    public void AgregarAsientos(int sala, String asiento, String disponibilidad){
        ContentValues valores = new ContentValues ();
        valores.put (SALA, sala);
        valores.put (ASID, asiento);
        valores.put (DISPOIBILIDAD, disponibilidad);
        this.getWritableDatabase ().insert (Tabla_Asiento, null, valores);
    }
    public void Agregarhoras(String hora){
        ContentValues valores = new ContentValues ();
        valores.put (Hora, hora);
        this.getWritableDatabase ().insert (Tabla_Horas, null, valores);

    }



    /**
     *
     * @return Todos los datos de la tabla de peliculas
     */

    public Cursor ObtenerTodasLasPeliculas() {
        String columnas[] = {NOMBRE0, NOMBRE, DURACION, IMAGEN, PRECIOMEN, PRECIOADUL, PRECIOTER};
        Cursor c = this.getReadableDatabase ().query (TABLE_PELICULA, columnas, null, null, null, null, null);
        return c;
    }

    /**
     *
     * @return Todos los datos de la tabla sucursales
     */
    public Cursor ObtenerSucursales(){
        String columnas[] = {IDSUCURSAL, UBICACION, NOMBRECINE, CANTIDADSALAS};
        Cursor c = this.getReadableDatabase ().query (Tabla_Sucursal, columnas, null, null, null, null, null);
        return c;
    }

    /**
     *
     * @return Todos los datos de la tabla facturas
     */
    public Cursor ObtenerTodasLasFacturas() {
        String columnas[] = {CLAVE, CONSECUTIVO, FACT_ID, DETALLE, FECHA, CEDULACLIENTEFAC};
        Cursor c = this.getReadableDatabase ().query (TABLA_FACTURA, columnas, null, null, null, null, null);
        return c;
    }

    /**
     *
     * @return Todos los datos de la tabla Asientos
     */

    public Cursor ObtenerTodosLosAsientos() {
        String columnas[] = {SALA, ASID, DISPOIBILIDAD};
        Cursor c = this.getReadableDatabase ().query (Tabla_Asiento, columnas, null, null, null, null, null);
        return c;
    }

    public void BorrarDatosPeliculas(){
        SQLiteDatabase db = this.getWritableDatabase();
        db.execSQL("DELETE FROM " + TABLE_PELICULA);
    }

    public void BorrarDatosClientes(){
        SQLiteDatabase db = this.getWritableDatabase();
        db.execSQL("DELETE FROM " + TABLA_CLIENTE);
    }
    public void BorrarDatosPelisPorSala(){
        SQLiteDatabase db = this.getWritableDatabase();
        db.execSQL("DELETE FROM " + TablaPeliSala);
    }
    public void BorrarSucursales(){
        SQLiteDatabase db = this.getWritableDatabase();
        db.execSQL("DELETE FROM " + Tabla_Sucursal);
    }

    public void BorrarAsiento(){
        SQLiteDatabase db = this.getWritableDatabase();
        db.execSQL("DELETE FROM " + Tabla_Asiento);
    }

    /**
     *
     * @param disponible String si el asiento está disponible
     * @param Sala String Sala donde se da la pelicula
     * @param Asiento String Asiento de la sala
     */
    public void ActualizarAsiento(String disponible, String Sala, String Asiento){
        SQLiteDatabase db = this.getWritableDatabase ();
        db.execSQL ("UPDATE "+Tabla_Asiento+" SET "+ DISPOIBILIDAD+" = "+ disponible +" WHERE "+SALA+"="+Sala+" AND "+ASID+"="+Asiento);


    }

}
