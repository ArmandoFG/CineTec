package tarea1.tec.cinetec;

import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.net.Uri;

public class Movies {

    private String id;
    private Bitmap imagen;
    private String nombre;




    public Movies(){

    }

    public String getId() {
        return id;
    }

    public Bitmap getImagen() {
        return imagen;
    }

    public String getNombre() {
        return nombre;
    }

    public void setId(String id) {
        this.id = id;
    }

    public void setImagen(Bitmap imagen) {
        this.imagen = imagen;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }


}
