package tarea1.tec.cinetec;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.net.Uri;

public class Movies {

    private String imagen;
    private String nombre;
    private Context context;




    public Movies(){

    }



    public String getImagen() {
        return imagen;
    }

    public String getNombre() {
        return nombre;
    }

    public Context getContext() {
        return context;
    }



    public void setImagen(String imagen) {
        this.imagen = imagen;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public void SetContext(Context context) {
        this.context = context;
    }


}
