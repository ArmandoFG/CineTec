package tarea1.tec.cinetec.model;

public class Tabla_peliPsala {
    private int id_en_cartelera;
    private int sucursal_id;
    private int sala_id;
    private String nombre_pelicula;
    private String hora;

    public int getId_en_cartelera() {
        return id_en_cartelera;
    }

    public void setId_en_cartelera(int id_en_cartelera) {
        this.id_en_cartelera = id_en_cartelera;
    }

    public int getSucursal_id() {
        return sucursal_id;
    }

    public void setSucursal_id(int sucursal_id) {
        this.sucursal_id = sucursal_id;
    }

    public int getSala_id() {
        return sala_id;
    }

    public void setSala_id(int sala_id) {
        this.sala_id = sala_id;
    }

    public String getNombre_pelicula() {
        return nombre_pelicula;
    }

    public void setNombre_pelicula(String nombre_pelicula) {
        this.nombre_pelicula = nombre_pelicula;
    }

    public String getHora() {
        return hora;
    }

    public void setHora(String hora) {
        this.hora = hora;
    }
}
