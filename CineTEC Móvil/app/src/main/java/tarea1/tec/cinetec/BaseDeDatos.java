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
    public static final String CLASIF = "clasificacion";
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
    public static final String IDSUCL = "id_sucursal";
    public static final String PASSC = "pass";
    public static final String USERC = "usuario";

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
    public static final String SALAID = "sala_id";
    public static final String NOMBREPELICULA = "nombre_pelicula";

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
     * uraDatos necesarios para Facti
     */

    public static final String TABLA_FACTURA = "Factura";
    public static final String CLAVE = "clave";
    public static final String CONSECUTIVO = "consecutivo";
    public static final String FACT_ID = "fact_id";
    public static final String DETALLE = "detalle";
    public static final String FECHA = "fecha";
    public static final String CEDULACLIENTEFAC = "cedula_cliente";







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
        db.execSQL ("CREATE TABLE " + TABLE_PELICULA + "(" + NOMBRE0 + " TEXT PRIMARY KEY NOT NULL, " + NOMBRE + " TEXT, " + DURACION + " INTEGER NOT NULL, " + IMAGEN + " TEXT, " +CLASIF + " TEXT, " + PRECIOMEN + " INTEGER, " + PRECIOADUL + " INTEGER, " + PRECIOTER + " INTEGER, " + "FOREIGN KEY("+CLASIF+") REFERENCES "+Tabla_Clasificacion+"("+TIPO_CLA+"))");
        /**
         * Creando tabla Cliente
         */
        db.execSQL ("CREATE TABLE " + TABLA_CLIENTE + "(" + CEDULA + " INTEGER PRIMARY KEY NOT NULL, " + EDAD + " INTEGER NOT NULL, " + NOMBREC + " TEXT NOT NULL, " + FECHAN + " TEXT NOT NULL, " + NUMTEL + " INTEGER, " + IDSUCL + " INTEGER NOT NULL, " + USERC + " TEXT NOT NULL, " + PASSC + " TEXT NOT NULL, " + "FOREIGN KEY("+IDSUCL+") REFERENCES "+Tabla_Sucursal+"("+IDSUCURSAL+"))");
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
        db.execSQL ("CREATE TABLE " + TablaPeliSala + "(" + SALAID + " INTEGER  NOT NULL, " + NOMBREPELICULA + " TEXT NOT NULL, " + "FOREIGN KEY("+SALAID+") REFERENCES "+Tabla_Sala+"("+IDSALA+"), " + "FOREIGN KEY("+NOMBREPELICULA+") REFERENCES "+TABLE_PELICULA+"("+NOMBRE0+"))");
        /**
         * Creando tabla Clasificacion
         */
        db.execSQL ("CREATE TABLE " + Tabla_Clasificacion + "(" + TIPO_CLA + " TEXT PRIMARY KEY NOT NULL, " + NOMBREPELISALA + " TEXT NOT NULL, " + "FOREIGN KEY("+NOMBREPELISALA+") REFERENCES "+TABLE_PELICULA+"("+NOMBRE0+"))");
        /**
         * Creando tabla Director
         */
        db.execSQL ("CREATE TABLE " + Tabla_Director + "(" + NombreDIR + " TEXT PRIMARY KEY NOT NULL, " + Nombre_Pelicula + " TEXT NOT NULL, " + "FOREIGN KEY("+Nombre_Pelicula+") REFERENCES "+TABLE_PELICULA+"("+NOMBRE0+"))");
        /**
         * Creando tabla Protagonista
         */
        db.execSQL ("CREATE TABLE " + Tabla_Protagonista + "(" + NombrePro + " TEXT PRIMARY KEY NOT NULL, " + NomPeliProtagonista + " TEXT NOT NULL, " + "FOREIGN KEY("+NomPeliProtagonista+") REFERENCES "+TABLE_PELICULA+"("+NOMBRE0+"))");
        /**
         * Creando tabla factura
         */
        db.execSQL ("CREATE TABLE " + TABLA_FACTURA + "(" + CLAVE + " INTEGER NOT NULL, " + CONSECUTIVO + " INTEGER NOT NULL, "+ FACT_ID + " INTEGER NOT NULL, "+ DETALLE + " TEXT NOT NULL, "+ FECHA + " NUMERIC NOT NULL, " + CEDULACLIENTEFAC + " INTEGER NOT NULL, " + "PRIMARY KEY("+ CLAVE +", "+ CONSECUTIVO +", "+ FACT_ID +"), "  + "FOREIGN KEY("+CEDULACLIENTEFAC+") REFERENCES "+TABLA_CLIENTE+"("+CEDULA+"))");

    }

    @Override
    public void onUpgrade(SQLiteDatabase sqLiteDatabase, int oldVersion, int newVersion) {

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
    public void AgregarCliente(String cedula, int edad, String nombre, String fecha, int numero, int idsucursal, String usuario, String pass) {
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

    /**
     *
     * @param nombre_original String nombre original de la pelicula
     * @param nombre    String nombre de la pelicula
     * @param duracion  String duración de la pelicula
     * @param imagen    Array de byte de la imagen de la pelicula
     * @param clasificacion String Clasificación de la pelicula
     * @param precio_menores    Entero precio de menores de edad
     * @param precio_adultos    Entero precio de adultos
     * @param precio_terceraEdad Entero precio de la tercera edad
     */
    public void AgregarPelicula(String nombre_original, String nombre, String duracion, String imagen, String clasificacion, int precio_menores, int precio_adultos, int precio_terceraEdad) {
        ContentValues valores = new ContentValues ();
        valores.put (NOMBRE0, nombre_original);
        valores.put (NOMBRE, nombre);
        valores.put (DURACION, duracion);
        valores.put (IMAGEN, imagen);
        valores.put (CLASIF, clasificacion);
        valores.put (PRECIOMEN, precio_menores);
        valores.put (PRECIOADUL, precio_adultos);
        valores.put (PRECIOTER, precio_terceraEdad);
        this.getWritableDatabase ().insert (TABLE_PELICULA, null, valores);

    }

    /**
     *
     * @return Todos los datos de la tabla de peliculas
     */

    public Cursor ObtenerTodasLasPeliculas() {
        String columnas[] = {NOMBRE0, NOMBRE, DURACION, IMAGEN, CLASIF, PRECIOMEN, PRECIOADUL, PRECIOTER};
        Cursor c = this.getReadableDatabase ().query (TABLE_PELICULA, columnas, null, null, null, null, null);
        return c;
    }

    public void AgregarSucursal(int id, String ubicacion, String cine, int salas) {
        ContentValues valores = new ContentValues ();
        valores.put (IDSUCURSAL, id);
        valores.put (UBICACION, ubicacion);
        valores.put (NOMBRECINE, cine);
        valores.put (CANTIDADSALAS, salas);
        this.getWritableDatabase ().insert (Tabla_Sucursal, null, valores);

    }

    public Cursor ObtenerSucursales(){
        String columnas[] = {IDSUCURSAL, UBICACION, NOMBRECINE, CANTIDADSALAS};
        Cursor c = this.getReadableDatabase ().query (Tabla_Sucursal, columnas, null, null, null, null, null);
        return c;
    }



}
