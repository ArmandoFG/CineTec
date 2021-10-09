package tarea1.tec.cinetec.model;

public class Tabla_Sucursal {
    private int id_sucursal;
    private String ubicacion;
    private String nombre_cine;
    private int cantidad_salas;

    public int getId_sucursal() {
        return id_sucursal;
    }

    public void setId_sucursal(int id_sucursal) {
        this.id_sucursal = id_sucursal;
    }

    public String getUbicacion() {
        return ubicacion;
    }

    public void setUbicacion(String ubicacion) {
        this.ubicacion = ubicacion;
    }

    public String getNombre_cine() {
        return nombre_cine;
    }

    public void setNombre_cine(String nombre_cine) {
        this.nombre_cine = nombre_cine;
    }

    public int getCantidad_salas() {
        return cantidad_salas;
    }

    public void setCantidad_salas(int cantidad_salas) {
        this.cantidad_salas = cantidad_salas;
    }
}
