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
import tarea1.tec.cinetec.interfaces.AsientoAPI;
import tarea1.tec.cinetec.interfaces.ClasificacionAPI;
import tarea1.tec.cinetec.interfaces.ClienteAPI;
import tarea1.tec.cinetec.interfaces.DirectorAPI;
import tarea1.tec.cinetec.interfaces.Peli_por_SalaAPI;
import tarea1.tec.cinetec.interfaces.PeliculasAPI;
import tarea1.tec.cinetec.interfaces.ProtagonistaAPI;
import tarea1.tec.cinetec.interfaces.SalaAPI;
import tarea1.tec.cinetec.interfaces.SucursalAPI;
import tarea1.tec.cinetec.model.Tabla_Asiento;
import tarea1.tec.cinetec.model.Tabla_Clasificacion;
import tarea1.tec.cinetec.model.Tabla_Cliente;
import tarea1.tec.cinetec.model.Tabla_Director;
import tarea1.tec.cinetec.model.Tabla_Peliculas;
import tarea1.tec.cinetec.model.Tabla_Protagonista;
import tarea1.tec.cinetec.model.Tabla_Sala;
import tarea1.tec.cinetec.model.Tabla_Sucursal;
import tarea1.tec.cinetec.model.Tabla_peliPsala;

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

    public void SincronizarSucursales(Context c) {
        //Toast.makeText(c, "SINCRONIZANDO", Toast.LENGTH_SHORT).show();
        Retrofit retrofit = new Retrofit.Builder ().baseUrl (BASEURL)
                //Retrofit retrofit = new Retrofit.Builder().baseUrl("https://jsonplaceholder.typicode.com/")
                .addConverterFactory (GsonConverterFactory.create ()).build ();

        SucursalAPI sucursalAPI = retrofit.create (SucursalAPI.class);
        Call<List<Tabla_Sucursal>> call = sucursalAPI.find ();
        call.enqueue (new Callback<List<Tabla_Sucursal>> () {
            @Override
            public void onResponse(Call<List<Tabla_Sucursal>> call, Response<List<Tabla_Sucursal>> response) {
                try {
                    //Toast.makeText(c, "HOLA", Toast.LENGTH_SHORT).show();
                    if (response.isSuccessful ()) {
                        Toast.makeText (c, "Conectado", Toast.LENGTH_SHORT).show ();
                        List<Tabla_Sucursal> m = response.body ();
                        final BaseDeDatos db = new BaseDeDatos (c);
                        for (Tabla_Sucursal suc : m) {
                            try {
                                db.AgregarSucursal (suc.getId_sucursal(),suc.getUbicacion(),suc.getNombre_cine(),suc.getCantidad_salas());
                            } catch (Exception ex) {

                            }

                        }

                    }

                } catch (Exception ex) {

                    Toast.makeText (c, ex.getMessage (), Toast.LENGTH_SHORT).show ();
                }
            }

            @Override
            public void onFailure(Call<List<Tabla_Sucursal>> call, Throwable t) {
                Toast.makeText (c, "Error de conexion", Toast.LENGTH_SHORT).show ();
            }
        });
    }

    public void SincronizarSalas(Context c) {
        //Toast.makeText(c, "SINCRONIZANDO", Toast.LENGTH_SHORT).show();
        Retrofit retrofit = new Retrofit.Builder ().baseUrl (BASEURL)
                //Retrofit retrofit = new Retrofit.Builder().baseUrl("https://jsonplaceholder.typicode.com/")
                .addConverterFactory (GsonConverterFactory.create ()).build ();

        SalaAPI salaAPI = retrofit.create (SalaAPI.class);
        Call<List<Tabla_Sala>> call = salaAPI.find ();
        call.enqueue (new Callback<List<Tabla_Sala>> () {
            @Override
            public void onResponse(Call<List<Tabla_Sala>> call, Response<List<Tabla_Sala>> response) {
                try {
                    //Toast.makeText(c, "HOLA", Toast.LENGTH_SHORT).show();
                    if (response.isSuccessful ()) {
                        Toast.makeText (c, "Conectado", Toast.LENGTH_SHORT).show ();
                        List<Tabla_Sala> m = response.body ();
                        final BaseDeDatos db = new BaseDeDatos (c);
                        for (Tabla_Sala sala : m) {
                            try {
                                db.AgregarSala (sala.getId_sala(),sala.getFilas(),sala.getCapacidad(),sala.getColumnas(),sala.getId_sucursal());
                            } catch (Exception ex) {

                            }

                        }

                    }

                } catch (Exception ex) {

                    Toast.makeText (c, ex.getMessage (), Toast.LENGTH_SHORT).show ();
                }
            }

            @Override
            public void onFailure(Call<List<Tabla_Sala>> call, Throwable t) {
                Toast.makeText (c, "Error de conexion", Toast.LENGTH_SHORT).show ();
            }
        });
    }

    public void SincronizarCliente(Context c) {
        //Toast.makeText(c, "SINCRONIZANDO", Toast.LENGTH_SHORT).show();
        Retrofit retrofit = new Retrofit.Builder ().baseUrl (BASEURL)
                //Retrofit retrofit = new Retrofit.Builder().baseUrl("https://jsonplaceholder.typicode.com/")
                .addConverterFactory (GsonConverterFactory.create ()).build ();

        ClienteAPI clienteAPI = retrofit.create (ClienteAPI.class);
        Call<List<Tabla_Cliente>> call = clienteAPI.find ();
        call.enqueue (new Callback<List<Tabla_Cliente>> () {
            @Override
            public void onResponse(Call<List<Tabla_Cliente>> call, Response<List<Tabla_Cliente>> response) {
                try {
                    //Toast.makeText(c, "HOLA", Toast.LENGTH_SHORT).show();
                    if (response.isSuccessful ()) {
                        Toast.makeText (c, "Conectado", Toast.LENGTH_SHORT).show ();
                        List<Tabla_Cliente> m = response.body ();
                        final BaseDeDatos db = new BaseDeDatos (c);
                        for (Tabla_Cliente cliente : m) {
                            try {
                                db.AgregarCliente (cliente.getCedula(),cliente.getEdad(),cliente.getNombre(),cliente.getFecha_nacimiento(),
                                        cliente.getNumero_telefono(),cliente.getId_sucursal(),cliente.getUsuario(),cliente.getPass());
                            } catch (Exception ex) {

                            }

                        }

                    }

                } catch (Exception ex) {

                    Toast.makeText (c, ex.getMessage (), Toast.LENGTH_SHORT).show ();
                }
            }

            @Override
            public void onFailure(Call<List<Tabla_Cliente>> call, Throwable t) {
                Toast.makeText (c, "Error de conexion", Toast.LENGTH_SHORT).show ();
            }
        });
    }

    public void SincronizarAsiento(Context c) {
        //Toast.makeText(c, "SINCRONIZANDO", Toast.LENGTH_SHORT).show();
        Retrofit retrofit = new Retrofit.Builder ().baseUrl (BASEURL)
                //Retrofit retrofit = new Retrofit.Builder().baseUrl("https://jsonplaceholder.typicode.com/")
                .addConverterFactory (GsonConverterFactory.create ()).build ();

        AsientoAPI asientoAPI = retrofit.create (AsientoAPI.class);
        Call<List<Tabla_Asiento>> call = asientoAPI.find ();
        call.enqueue (new Callback<List<Tabla_Asiento>> () {
            @Override
            public void onResponse(Call<List<Tabla_Asiento>> call, Response<List<Tabla_Asiento>> response) {
                try {
                    //Toast.makeText(c, "HOLA", Toast.LENGTH_SHORT).show();
                    if (response.isSuccessful ()) {
                        Toast.makeText (c, "Conectado", Toast.LENGTH_SHORT).show ();
                        List<Tabla_Asiento> m = response.body ();
                        final BaseDeDatos db = new BaseDeDatos (c);
                        for (Tabla_Asiento asiento : m) {
                            try {
                                db.AgregarAsientos (asiento.getSalaid(),asiento.getAsientoid(),asiento.getDisponibildad());
                            } catch (Exception ex) {

                            }

                        }

                    }

                } catch (Exception ex) {

                    Toast.makeText (c, ex.getMessage (), Toast.LENGTH_SHORT).show ();
                }
            }

            @Override
            public void onFailure(Call<List<Tabla_Asiento>> call, Throwable t) {
                Toast.makeText (c, "Error de conexion", Toast.LENGTH_SHORT).show ();
            }
        });
    }

    public void SincronizarPeliPSala(Context c) {
        //Toast.makeText(c, "SINCRONIZANDO", Toast.LENGTH_SHORT).show();
        Retrofit retrofit = new Retrofit.Builder ().baseUrl (BASEURL)
                //Retrofit retrofit = new Retrofit.Builder().baseUrl("https://jsonplaceholder.typicode.com/")
                .addConverterFactory (GsonConverterFactory.create ()).build ();

        Peli_por_SalaAPI asientoAPI = retrofit.create (Peli_por_SalaAPI.class);
        Call<List<Tabla_peliPsala>> call = asientoAPI.find ();
        call.enqueue (new Callback<List<Tabla_peliPsala>> () {
            @Override
            public void onResponse(Call<List<Tabla_peliPsala>> call, Response<List<Tabla_peliPsala>> response) {
                try {
                    //Toast.makeText(c, "HOLA", Toast.LENGTH_SHORT).show();
                    if (response.isSuccessful ()) {
                        Toast.makeText (c, "Conectado", Toast.LENGTH_SHORT).show ();
                        List<Tabla_peliPsala> m = response.body ();
                        final BaseDeDatos db = new BaseDeDatos (c);
                        for (Tabla_peliPsala pps : m) {
                            try {
                                db.AgreparPeliPorSala(pps.getId_en_cartelera(),pps.getSucursal_id(),pps.getSala_id(),pps.getNombre_pelicula(),pps.getHora());
                            } catch (Exception ex) {

                            }

                        }

                    }

                } catch (Exception ex) {

                    Toast.makeText (c, ex.getMessage (), Toast.LENGTH_SHORT).show ();
                }
            }

            @Override
            public void onFailure(Call<List<Tabla_peliPsala>> call, Throwable t) {
                Toast.makeText (c, "Error de conexion", Toast.LENGTH_SHORT).show ();
            }
        });
    }

    public void SincronizarDirector(Context c) {
        //Toast.makeText(c, "SINCRONIZANDO", Toast.LENGTH_SHORT).show();
        Retrofit retrofit = new Retrofit.Builder ().baseUrl (BASEURL)
                //Retrofit retrofit = new Retrofit.Builder().baseUrl("https://jsonplaceholder.typicode.com/")
                .addConverterFactory (GsonConverterFactory.create ()).build ();

        DirectorAPI directorAPI = retrofit.create (DirectorAPI.class);
        Call<List<Tabla_Director>> call = directorAPI.find ();
        call.enqueue (new Callback<List<Tabla_Director>> () {
            @Override
            public void onResponse(Call<List<Tabla_Director>> call, Response<List<Tabla_Director>> response) {
                try {
                    //Toast.makeText(c, "HOLA", Toast.LENGTH_SHORT).show();
                    if (response.isSuccessful ()) {
                        Toast.makeText (c, "Conectado", Toast.LENGTH_SHORT).show ();
                        List<Tabla_Director> m = response.body ();
                        final BaseDeDatos db = new BaseDeDatos (c);
                        for (Tabla_Director dir : m) {
                            try {
                                db.AgregarDirector(dir.getNombre(),dir.getNombre_pelicula());
                            } catch (Exception ex) {

                            }

                        }

                    }

                } catch (Exception ex) {

                    Toast.makeText (c, ex.getMessage (), Toast.LENGTH_SHORT).show ();
                }
            }

            @Override
            public void onFailure(Call<List<Tabla_Director>> call, Throwable t) {
                Toast.makeText (c, "Error de conexion", Toast.LENGTH_SHORT).show ();
            }
        });
    }

    public void SincronizarProtagonista(Context c) {
        //Toast.makeText(c, "SINCRONIZANDO", Toast.LENGTH_SHORT).show();
        Retrofit retrofit = new Retrofit.Builder ().baseUrl (BASEURL)
                //Retrofit retrofit = new Retrofit.Builder().baseUrl("https://jsonplaceholder.typicode.com/")
                .addConverterFactory (GsonConverterFactory.create ()).build ();

        ProtagonistaAPI protagonistaAPI = retrofit.create (ProtagonistaAPI.class);
        Call<List<Tabla_Protagonista>> call = protagonistaAPI.find ();
        call.enqueue (new Callback<List<Tabla_Protagonista>> () {
            @Override
            public void onResponse(Call<List<Tabla_Protagonista>> call, Response<List<Tabla_Protagonista>> response) {
                try {
                    //Toast.makeText(c, "HOLA", Toast.LENGTH_SHORT).show();
                    if (response.isSuccessful ()) {
                        Toast.makeText (c, "Conectado", Toast.LENGTH_SHORT).show ();
                        List<Tabla_Protagonista> m = response.body ();
                        final BaseDeDatos db = new BaseDeDatos (c);
                        for (Tabla_Protagonista prota : m) {
                            try {
                                db.AgregarProtagonista(prota.getNombre(),prota.getNombre_pelicula());
                            } catch (Exception ex) {

                            }

                        }

                    }

                } catch (Exception ex) {

                    Toast.makeText (c, ex.getMessage (), Toast.LENGTH_SHORT).show ();
                }
            }

            @Override
            public void onFailure(Call<List<Tabla_Protagonista>> call, Throwable t) {
                Toast.makeText (c, "Error de conexion", Toast.LENGTH_SHORT).show ();
            }
        });
    }

    /**
     *
     * @param c Cursor con datos de clasificación
     */
    public void SincronizarClasificacion(Context c) {
        //Toast.makeText(c, "SINCRONIZANDO", Toast.LENGTH_SHORT).show();
        Retrofit retrofit = new Retrofit.Builder ().baseUrl (BASEURL)
                //Retrofit retrofit = new Retrofit.Builder().baseUrl("https://jsonplaceholder.typicode.com/")
                .addConverterFactory (GsonConverterFactory.create ()).build ();

        ClasificacionAPI clasificacionAPI = retrofit.create (ClasificacionAPI.class);
        Call<List<Tabla_Clasificacion>> call = clasificacionAPI.find ();
        call.enqueue (new Callback<List<Tabla_Clasificacion>> () {
            @Override
            public void onResponse(Call<List<Tabla_Clasificacion>> call, Response<List<Tabla_Clasificacion>> response) {
                try {
                    //Toast.makeText(c, "HOLA", Toast.LENGTH_SHORT).show();
                    if (response.isSuccessful ()) {
                        Toast.makeText (c, "Conectado", Toast.LENGTH_SHORT).show ();
                        List<Tabla_Clasificacion> m = response.body ();
                        final BaseDeDatos db = new BaseDeDatos (c);
                        for (Tabla_Clasificacion clas : m) {
                            try {
                                db.AgregarClasificacion(clas.getTipo_clasificacion(),clas.getTipo_clasificacion());
                            } catch (Exception ex) {

                            }

                        }

                    }

                } catch (Exception ex) {

                    Toast.makeText (c, ex.getMessage (), Toast.LENGTH_SHORT).show ();
                }
            }

            @Override
            public void onFailure(Call<List<Tabla_Clasificacion>> call, Throwable t) {
                Toast.makeText (c, "Error de conexion", Toast.LENGTH_SHORT).show ();
            }
        });
    }

    /**
     *
     * @param c Cursor datos de todas las facturas
     */
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
