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

import java.io.ByteArrayInputStream;
import java.io.File;
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


        rv = (RecyclerView) findViewById (R.id.Recycler_sms);
        pelis_cartelera = new ArrayList<> ();


        LinearLayoutManager lm = new LinearLayoutManager (this);
        rv.setLayoutManager (lm);

        adapter = new CarteleraAdaptar (pelis_cartelera, this, new CarteleraAdaptar.OnItemClickListener (){
            @Override
            public void onItemClickListener(View view, int position) {
                CardView cardView = (CardView) view;
                Ini_Proyecciones();


            }
        });
        rv.setAdapter (adapter);


       // Bitmap bitmap = ((BitmapDrawable)getResources().getDrawable(R.drawable.imgpeli1)).getBitmap();
        //CreateMensaje (bitmap,"1");

        MostarPeliculas ();




    }

    public void CreateMensaje(Bitmap imagen, String id, String nombre){
        Movies movAuxiliar = new Movies ();
        movAuxiliar.setId (id);
        movAuxiliar.setImagen (imagen);
        movAuxiliar.setNombre (nombre);
        pelis_cartelera.add (movAuxiliar);
        adapter.notifyDataSetChanged ();

    }

    public void Ini_Proyecciones(){
        Intent principal = new Intent(this, Proyeccion.class);
        startActivity (principal);
    }



    public void MostarPeliculas(){

        BaseDeDatos db = new BaseDeDatos (this);
        Cursor c = db.ObtenerTodasLasPeliculas ();
        ArrayList<String> peliculas = new ArrayList<String> ();

        String nombre_original = "";
        String nombre = "";
        String duracion = "";
        byte[] imagen;
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
                imagen = c.getBlob (3);
                clasificacion = c.getString (4);
                precio_menores = c.getInt (5);
                precio_adultos = c.getInt (6);
                precio_terceraEdad = c.getInt (7);


                ByteArrayInputStream bais = new ByteArrayInputStream(imagen);
                bitmap = BitmapFactory.decodeStream(bais);

                CreateMensaje (bitmap,nombre, nombre);

            }while (c.moveToNext ());
        }
    }
}