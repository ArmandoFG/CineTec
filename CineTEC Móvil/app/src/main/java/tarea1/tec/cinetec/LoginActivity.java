package tarea1.tec.cinetec;

import android.content.Intent;
import android.database.Cursor;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.drawable.BitmapDrawable;
import android.net.Uri;
import android.os.Bundle;
import android.view.View;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.Toast;

import androidx.annotation.DrawableRes;
import androidx.appcompat.app.AppCompatActivity;

import com.bumptech.glide.Glide;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import retrofit2.Call;
import retrofit2.Callback;
import retrofit2.Response;
import retrofit2.Retrofit;
import retrofit2.converter.gson.GsonConverterFactory;
import tarea1.tec.cinetec.interfaces.PeliculasAPI;
import tarea1.tec.cinetec.model.Tabla_Peliculas;


public class LoginActivity extends AppCompatActivity {

    static String BASEURL = "http://192.168.1.3:8081/";


    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate (savedInstanceState);
        setContentView (R.layout.activity_login);
        //generarCliente();
        //generarPelicula();
        Sincronizar sinc = new Sincronizar();
        //sinc.SincronizarPeliculas(LoginActivity.this);
        //sinc.SincronizarSucursales(LoginActivity.this);
        //sinc.SincronizarSalas(LoginActivity.this);
        //sinc.SincronizarCliente(LoginActivity.this);
        //sinc.SincronizarAsiento(LoginActivity.this);
        //sinc.SincronizarPeliPSala(LoginActivity.this);
        //sinc.SincronizarClasificacion(LoginActivity.this);
        //sinc.SincronizarDirector(LoginActivity.this);
        //sinc.SincronizarProtagonista(LoginActivity.this);

        //final BaseDeDatos db = new BaseDeDatos (LoginActivity.this);



        //db.AgregarPelicula ("Pobochnyi","La mano del demonio", "93 min", "http://192.168.0.111/img/imgpeli1.png","+16",3200,3200, 2500);
        //db.AgregarPelicula ("Prueba","La mano del demonio", "93 min", "http://192.168.0.11/img/imgpeli1.png","+16",3200,3200, 2500);
        //db.AgregarPelicula ("Prueba2","La mano del demonio", "93 min", "http://192.168.0.111/img/imgpeli1.png","+16",3200,3200, 2500);


    }

    public void Ini_Principal(){
        Intent principal = new Intent(this, Cartelera.class);
        startActivity (principal);
    }

    /**
     * Función que obtiene la contraseña del usuario y verifica si es la correcta
     * @param view Para que el boton pueda detectar la función
     */

    public void VerificarUsuario(View view){


        EditText UsuarioText = findViewById (R.id.username);

        EditText PassText = findViewById (R.id.password);
        final BaseDeDatos db = new BaseDeDatos (LoginActivity.this);
        Cursor c = db.ObtenerCliente (String.valueOf(UsuarioText.getText ()));
        String pass = "";
        String user = "";


                if (c != null && c.moveToFirst()){
        do{
            user = c.getString (6);
            pass = c.getString (7);


        }while (c.moveToNext ());

                }

        if(UsuarioText.getText ().toString ().equals ("") || PassText.getText ().toString ().equals ("")){
            Toast.makeText(LoginActivity.this, "Debe rellenar ambos campos", Toast.LENGTH_SHORT).show();

        }else{

            if(String.valueOf(PassText.getText ()).equals (pass)){
                Ini_Principal ();
            }else{
                Toast.makeText(LoginActivity.this, "Usuario o contraseña incorrecta", Toast.LENGTH_SHORT).show();
            }

        }


    }


    /**
     * Agrega los datos de un cliente a la base de datos
     */

    public void generarCliente(){
        final BaseDeDatos db = new BaseDeDatos (LoginActivity.this);
        db.AgregarCliente (117790696,20, "Armando Fallas", "16-06-2000", 85465732,1,"Mando", "1234m");
    }

    /**
     * Agrega los datos de una pelicula a la base de datos
     */

    public void generarPelicula(){
        final BaseDeDatos db = new BaseDeDatos (LoginActivity.this);



        db.AgregarPelicula ("Pobochnyi effekt","La mano del demonio", "93 min", "http://192.168.1.3:8081/img/imgpeli1.png",3200,3200, 2500);

    }

    public void GenerarSucursales(){
        BaseDeDatos db = new BaseDeDatos (this);
        db.AgregarSucursal (0,"Cartago", "CineTec", 8);
        db.AgregarSucursal (1,"San José", "CineTec", 5);
        db.AgregarSucursal (2,"Heredia", "CineTec", 12);
        db.AgregarSucursal (3,"Puntarenas", "CineTec", 6);

    }




}
