package tarea1.tec.cinetec;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.net.Uri;

public class Movies {

    private String imagen;
    private String nombre;
    private String nombreOriginal;
    private Context context;




    public Movies(){

    }


    /**
     *
     * @return URL de la imagen
     */
    public String getImagen() {
        return imagen;
    }

    /**
     *
     * @return nombre de la pelicula
     */

    public String getNombre() {
        return nombre;
    }

    /**
     *
     * @return nombre original de la pelicula
     */

    public String getNombreOR() {
        return nombreOriginal;
    }

    /**
     *
     * @return Contexto donde se usa
     */
    public Context getContext() {
        return context;
    }

    /**
     *
     * @param imagen Url de la imagen
     */

    public void setImagen(String imagen) {
        this.imagen = imagen;
    }

    /**
     *
     * @param nombre Nombre de la pelicula
     */

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    /**
     *
     * @param nombre Nombre original de la pelicula
     */

    public void setNombreOr(String nombre) {
        this.nombreOriginal = nombre;
    }

    /**
     *
     * @param context Contexto donde se usa
     */

    public void SetContext(Context context) {
        this.context = context;
    }


}
