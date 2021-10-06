package tarea1.tec.cinetec;

import android.content.Context;
import android.widget.Toast;

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
     * */
    public void SincronizarPeliculas(Context c)
    {
        //Toast.makeText(c, "SINCRONIZANDO", Toast.LENGTH_SHORT).show();
        Retrofit retrofit = new Retrofit.Builder().baseUrl(BASEURL)
                //Retrofit retrofit = new Retrofit.Builder().baseUrl("https://jsonplaceholder.typicode.com/")
                .addConverterFactory(GsonConverterFactory.create()).build();

        PeliculasAPI peliculaAPI=retrofit.create(PeliculasAPI.class);
        Call<List<Tabla_Peliculas>> call=peliculaAPI.find();
        call.enqueue(new Callback<List<Tabla_Peliculas>> () {
            @Override
            public void onResponse(Call<List<Tabla_Peliculas>> call, Response<List<Tabla_Peliculas>> response) {
                try
                {
                    //Toast.makeText(c, "HOLA", Toast.LENGTH_SHORT).show();
                    if(response.isSuccessful()){
                        Toast.makeText(c, "Conectado", Toast.LENGTH_SHORT).show();
                        List<Tabla_Peliculas> m=response.body();
                        final BaseDeDatos db = new BaseDeDatos (c);
                        for (Tabla_Peliculas peli:m) {
                            try {
                                db.AgregarPelicula(peli.getNombre_original(), peli.getNombre(), peli.getDuracion(), peli.getImagen(), peli.getClasificacion(), peli.getPrecio_menores(), peli.getPrecio_adultos(), peli.getPrecio_terceraEdad());
                            }catch (Exception ex){

                            }

                        }

                    }

                }catch (Exception ex){

                    Toast.makeText(c, ex.getMessage(), Toast.LENGTH_SHORT).show();
                }
            }

            @Override
            public void onFailure(Call<List<Tabla_Peliculas>> call, Throwable t) {
                Toast.makeText(c, "Error de conexion", Toast.LENGTH_SHORT).show();
            }
        });
    }
}
