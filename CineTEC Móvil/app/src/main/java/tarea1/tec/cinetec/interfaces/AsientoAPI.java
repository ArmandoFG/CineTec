package tarea1.tec.cinetec.interfaces;

import java.util.List;

import retrofit2.Call;
import retrofit2.http.Body;
import retrofit2.http.GET;
import retrofit2.http.POST;
import retrofit2.http.PUT;
import tarea1.tec.cinetec.model.Tabla_Asiento;
import tarea1.tec.cinetec.model.Tabla_Factura;

public interface AsientoAPI {
    /**
     * Metodo tipo Get para obtener todas las peliculas
     * */
    @GET("api/asiento")
    public Call<List<Tabla_Asiento>> find();

    @PUT("/api/asiento/syncasiento")
    public Call<Tabla_Asiento> env(@Body Tabla_Asiento Body);
}
