package tarea1.tec.cinetec.interfaces;

import java.util.List;

import retrofit2.Call;
import retrofit2.http.GET;
import tarea1.tec.cinetec.model.Tabla_peliPsala;

public interface Peli_por_SalaAPI {
    /**
     * Metodo tipo Get para obtener todas las peliculas
     * */
    @GET("api/pelicula/pps")
    public Call<List<Tabla_peliPsala>> find();
}
