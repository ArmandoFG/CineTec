package tarea1.tec.cinetec.interfaces;

import java.util.List;

import retrofit2.Call;
import retrofit2.http.Body;
import retrofit2.http.GET;
import retrofit2.http.POST;
import tarea1.tec.cinetec.model.Tabla_Factura;
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

    @POST("/api/factura/addfact")
    public Call<Tabla_Factura> env(@Body Tabla_Factura Body);
}
