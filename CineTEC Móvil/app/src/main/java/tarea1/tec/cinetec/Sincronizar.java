package tarea1.tec.cinetec;

import android.content.Context;
import android.database.Cursor;
import android.widget.Toast;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

import java.util.List;

import retrofit2.Call;
import retrofit2.Callback;
import retrofit2.Response;
import retrofit2.Retrofit;
import retrofit2.converter.gson.GsonConverterFactory;
import tarea1.tec.cinetec.interfaces.PeliculasAPI;
import tarea1.tec.cinetec.model.Tabla_Peliculas;

public class Sincronizar {

    static String BASEURL = "http://192.168.1.3:8081/";


    /**
     * Metodo que envia una solicitud de tipo Get al API para obtener el listado de los movimientos de la cuenta
     */
    public void SincronizarPeliculas(Context c) {
        //Toast.makeText(c, "SINCRONIZANDO", Toast.LENGTH_SHORT).show();
        Retrofit retrofit = new Retrofit.Builder ().baseUrl (BASEURL)
                //Retrofit retrofit = new Retrofit.Builder().baseUrl("https://jsonplaceholder.typicode.com/")
                .addConverterFactory (GsonConverterFactory.create ()).build ();

        PeliculasAPI peliculaAPI = retrofit.create (PeliculasAPI.class);
        Call<List<Tabla_Peliculas>> call = peliculaAPI.find ();
        call.enqueue (new Callback<List<Tabla_Peliculas>> () {
            @Override
            public void onResponse(Call<List<Tabla_Peliculas>> call, Response<List<Tabla_Peliculas>> response) {
                try {
                    //Toast.makeText(c, "HOLA", Toast.LENGTH_SHORT).show();
                    if (response.isSuccessful ()) {
                        Toast.makeText (c, "Conectado", Toast.LENGTH_SHORT).show ();
                        List<Tabla_Peliculas> m = response.body ();
                        final BaseDeDatos db = new BaseDeDatos (c);
                        for (Tabla_Peliculas peli : m) {
                            try {
                                db.AgregarPelicula (peli.getNombre_original (), peli.getNombre (), peli.getDuracion (), peli.getImagen (), peli.getPrecio_menores (), peli.getPrecio_adultos (), peli.getPrecio_terceraEdad ());
                            } catch (Exception ex) {

                            }

                        }

                    }

                } catch (Exception ex) {

                    Toast.makeText (c, ex.getMessage (), Toast.LENGTH_SHORT).show ();
                }
            }

            @Override
            public void onFailure(Call<List<Tabla_Peliculas>> call, Throwable t) {
                Toast.makeText (c, "Error de conexion", Toast.LENGTH_SHORT).show ();
            }
        });
    }

    public void EnviarDatosFactura(Context c) {
        final BaseDeDatos db = new BaseDeDatos (c);

        Cursor cursor = db.ObtenerTodasLasFacturas ();


        JSONArray array = new JSONArray ();
        if (cursor != null && cursor.getCount () > 0) {
            while (cursor.moveToNext ()) {
                JSONObject object = new JSONObject ();
                try {
                    object.put ("clave", cursor.getInt (0));
                    object.put ("consecutivo", cursor.getInt (1));
                    object.put ("fact_id", cursor.getInt (2));
                    object.put ("detalle", cursor.getString (3));
                    object.put ("fecha", cursor.getString (4));
                    object.put ("cedula_cliente", cursor.getInt (5));

                    array.put (object);
                } catch (JSONException e) {
                    e.printStackTrace ();
                }

            }
        }
    }
    public void EnviarDatosAsientos(Context c) {
        final BaseDeDatos db = new BaseDeDatos (c);

        Cursor cursor = db.ObtenerTodosLosAsientos ();


        JSONArray array = new JSONArray ();
        if (cursor != null && cursor.getCount () > 0) {
            while (cursor.moveToNext ()) {
                JSONObject object = new JSONObject ();
                try {
                    object.put ("Salaid", cursor.getInt (0));
                    object.put ("AsientoID", cursor.getInt (1));
                    object.put ("Disponibilidad", cursor.getInt (2));


                    array.put (object);
                } catch (JSONException e) {
                    e.printStackTrace ();
                }

            }
        }
    }
}
