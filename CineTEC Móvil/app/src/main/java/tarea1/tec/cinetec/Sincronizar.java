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

    static String BASEURL = "https://localhost:44349/";


    /**
     * Metodo que envia una solicitud de tipo Get al API para obtener el listado de los movimientos de la cuenta
     * */
    public void SincronizarTablas()
    {
        Retrofit retrofit = new Retrofit.Builder().baseUrl(BASEURL)
                //Retrofit retrofit = new Retrofit.Builder().baseUrl("https://jsonplaceholder.typicode.com/")
                .addConverterFactory(GsonConverterFactory.create()).build();

        PeliculasAPI movimientoAPI=retrofit.create(PeliculasAPI.class);
        Call<List<Tabla_Peliculas>> call=movimientoAPI.find();
        call.enqueue(new Callback<List<Tabla_Peliculas>>() {
            @Override
            public void onResponse(Call<List<Tabla_Peliculas>> call, Response<List<Tabla_Peliculas>> response) {
                try
                {
                    String listadoMovs = "";
                    //Toast.makeText(actividad_movimientos.this, "res"+response.body(), Toast.LENGTH_SHORT).show();
                    if(response.isSuccessful()){
                        System.out.println("Conectado");
                        List<Tabla_Peliculas> m=response.body();

                    }

                }catch (Exception ex){

                    System.out.println(ex);
                }
            }

            @Override
            public void onFailure(Call<List<Tabla_Peliculas>> call, Throwable t) {
                System.out.println("Error de conexion");
            }
        });
    }
}
