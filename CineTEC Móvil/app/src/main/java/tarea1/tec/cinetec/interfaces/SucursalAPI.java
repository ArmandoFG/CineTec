package tarea1.tec.cinetec.interfaces;

import java.util.List;

import retrofit2.Call;
import retrofit2.http.GET;
import tarea1.tec.cinetec.model.Tabla_Sucursal;

public interface SucursalAPI {
    /**
     * Metodo tipo Get para obtener todas las peliculas
     * */
    @GET("api/sucursal")
    public Call<List<Tabla_Sucursal>> find();
}
