package tarea1.tec.cinetec.model;

public class Tabla_Peliculas {

    private String nombre_original;
    private String nombre;
    private String duracion;
    private String imagen;
    private int precio_menores;
    private int precio_adultos;
    private int precio_tercera_edad;

    public void setNombre_original(String nombre_original) {
        this.nombre_original = nombre_original;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public void setDuracion(String duracion) {
        this.duracion = duracion;
    }

    public void setImagen(String imagen) {
        this.imagen = imagen;
    }

    public void setPrecio_menores(int precio_menores) {
        this.precio_menores = precio_menores;
    }

    public void setPrecio_adultos(int precio_adultos) {
        this.precio_adultos = precio_adultos;
    }

    public void setPrecio_terceraEdad(int precio_terceraEdad) {
        this.precio_tercera_edad = precio_terceraEdad;
    }

    public String getNombre_original() {
        return nombre_original;
    }

    public String getNombre() {
        return nombre;
    }

    public String getDuracion() {
        return duracion;
    }

    public String getImagen() {
        return imagen;
    }

    public int getPrecio_menores() {
        return precio_menores;
    }

    public int getPrecio_adultos() {
        return precio_adultos;
    }

    public int getPrecio_terceraEdad() {
        return precio_tercera_edad;
    }
}