package tarea1.tec.cinetec.interfaces;

import java.util.List;

import retrofit2.Call;
import retrofit2.http.GET;
import tarea1.tec.cinetec.model.Tabla_Cliente;


public interface ClienteAPI {
    /**
     * Metodo tipo Get para obtener todas las peliculas
     * */
    @GET("api/cliente")
    public Call<List<Tabla_Cliente>> find();
}
