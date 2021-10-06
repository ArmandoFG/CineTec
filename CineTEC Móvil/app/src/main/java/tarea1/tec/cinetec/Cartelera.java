package tarea1.tec.cinetec;

import androidx.appcompat.app.AppCompatActivity;
import androidx.cardview.widget.CardView;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;

import android.content.Intent;
import android.database.Cursor;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Bundle;
import android.view.View;
import android.widget.ArrayAdapter;
import android.widget.ListView;
import android.widget.Spinner;
import android.widget.Toast;

import java.io.BufferedInputStream;
import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.net.URL;
import java.net.URLConnection;
import java.util.ArrayList;
import java.util.List;

public class Cartelera extends AppCompatActivity {


    private RecyclerView rv;
    private List<Movies> pelis_cartelera;
    public CarteleraAdaptar adapter;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate (savedInstanceState);
        setContentView (R.layout.activity_cartelera);

        CargarSucursales ();


        rv = (RecyclerView) findViewById (R.id.Recycler_sms);
        pelis_cartelera = new ArrayList<> ();


        LinearLayoutManager lm = new LinearLayoutManager (this);
        rv.setLayoutManager (lm);

        adapter = new CarteleraAdaptar (pelis_cartelera, this, new CarteleraAdaptar.OnItemClickListener (){
            @Override
            public void onItemClickListener(View view, int position) {
                CardView cardView = (CardView) view;
                inicioProyecciones (cardView.getContentDescription ().toString ());


            }
        });
        rv.setAdapter (adapter);


        MostarPeliculas ();




    }

    /**
     *
     * @param imagen Bitmap de la imagen de la pelicula
     * @param id    Id de la pelicula
     * @param nombre String nombre de la pelicula
     */

    public void CreateMensaje(String imagen, String id, String nombre){
        Movies movAuxiliar = new Movies ();
        movAuxiliar.setId (id);
        movAuxiliar.setImagen (imagen);
        movAuxiliar.setNombre (nombre);
        movAuxiliar.SetContext (this);
        pelis_cartelera.add (movAuxiliar);
        adapter.notifyDataSetChanged ();

    }

    public void Ini_Proyecciones(){
        Intent principal = new Intent(this, Proyeccion.class);
        startActivity (principal);
    }

    /**
     * Solicita todas las peliculas a la base de datos y se muestra en cartelera
     */

    public void MostarPeliculas(){

        BaseDeDatos db = new BaseDeDatos (this);
        Cursor c = db.ObtenerTodasLasPeliculas ();
        ArrayList<String> peliculas = new ArrayList<String> ();

        String nombre_original = "";
        String nombre = "";
        String duracion = "";
        String imagen = "";
        String clasificacion = "";
        int precio_menores = 0;
        int precio_adultos = 0;
        int precio_terceraEdad = 0;

        Bitmap bitmap = null;

        if(c.moveToFirst () != false){
            do{
                nombre_original = c.getString (0);
                nombre = c.getString (1);
                duracion = c.getString (2);
                imagen = c.getString (3);
                clasificacion = c.getString (4);
                precio_menores = c.getInt (5);
                precio_adultos = c.getInt (6);
                precio_terceraEdad = c.getInt (7);




                CreateMensaje (imagen,nombre, nombre);

            }while (c.moveToNext ());
        }
    }

    /**
     *
     * @param nombre_pelicula String nombre de la pelicula seleccionada
     */
    public void inicioProyecciones(String nombre_pelicula){
        Intent intent = new Intent (this,Proyeccion.class);
        intent.putExtra ("nombre", nombre_pelicula);
        startActivity (intent);
    }



    public void CargarSucursales(){

        BaseDeDatos db = new BaseDeDatos (this);
        Cursor c = db.ObtenerSucursales ();



        String Sucursal = "";
        String Cine = "";

        Spinner spinner;
        ArrayList<String> sucursales;
        spinner = findViewById (R.id.spinner2);
        sucursales = new ArrayList<String> ();

        if(c.moveToFirst () != false){
            do{
                Sucursal = c.getString (1);
                Cine = c.getString (2);

                sucursales.add (Sucursal + " " + Cine);

            }while (c.moveToNext ());
        }

        ArrayAdapter<String> adaptador = new ArrayAdapter<String> (this,android.R.layout.simple_list_item_1,sucursales);
        spinner.setAdapter (adaptador);

    }


}