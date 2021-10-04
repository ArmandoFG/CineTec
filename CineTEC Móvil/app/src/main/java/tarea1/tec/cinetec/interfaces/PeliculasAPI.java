package tarea1.tec.cinetec.interfaces;

import java.util.List;
import retrofit2.Call;
import retrofit2.http.GET;
import tarea1.tec.cinetec.model.Tabla_Peliculas;

/**
 * Interface para envio de solicitud al API
 * @author Harold Espinoza
 * */

public interface PeliculasAPI {

    /**
     * Metodo tipo Get para obtener todas las peliculas
     * */
    @GET("api/pelicula")
    public Call<List<Tabla_Peliculas>> find();
}
