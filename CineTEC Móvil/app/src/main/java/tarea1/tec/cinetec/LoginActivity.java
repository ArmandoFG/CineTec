package tarea1.tec.cinetec;

import android.content.Intent;
import android.database.Cursor;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.drawable.BitmapDrawable;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.view.View;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.Toast;

import androidx.annotation.DrawableRes;
import androidx.annotation.RequiresApi;
import androidx.appcompat.app.AppCompatActivity;

import com.bumptech.glide.Glide;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
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

        final BaseDeDatos db = new BaseDeDatos (LoginActivity.this);


        Sincronizar sinc = new Sincronizar();
        sinc.SincronizarPeliculas(LoginActivity.this);
        sinc.SincronizarSucursales(LoginActivity.this);
        sinc.SincronizarSalas(LoginActivity.this);
        sinc.SincronizarCliente(LoginActivity.this);
        sinc.SincronizarAsiento(LoginActivity.this);
        sinc.SincronizarPeliPSala(LoginActivity.this);
        sinc.SincronizarClasificacion(LoginActivity.this);
        sinc.SincronizarDirector(LoginActivity.this);
        sinc.SincronizarProtagonista(LoginActivity.this);


        db.AgregarFactura (1223,124,643,"Esta","16-06-20",144461234);
        db.AgregarCliente(12347747,21,"Harold","14-10-2000",63139863,1,"hrld","spnz");
        db.AgregarFactura (123,12,43,"Esta X2","16-07-20",260012001);
        db.AgregarFactura (122332,124654,64323,"Esta X3","15-06-20",313340092);
        sinc.EnviarDatosFactura(LoginActivity.this);



        sinc.EnviarDatosAsientos(LoginActivity.this);





    }

    public void Ini_Principal(int cedula){
        Intent principal = new Intent(this, Cartelera.class);
        principal.putExtra ("cedula", cedula);
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
        int cedula = 0;


                if (c != null && c.moveToFirst()){
        do{
            pass = c.getString (7);
            cedula = c.getInt (0);


        }while (c.moveToNext ());

                }

        if(UsuarioText.getText ().toString ().equals ("") || PassText.getText ().toString ().equals ("")){
            Toast.makeText(LoginActivity.this, "Debe rellenar ambos campos", Toast.LENGTH_SHORT).show();

        }else{

            if(String.valueOf(PassText.getText ()).equals (pass)){
                Ini_Principal (cedula);
            }else{
                Toast.makeText(LoginActivity.this, "Usuario o contraseña incorrecta", Toast.LENGTH_SHORT).show();
            }

        }


    }


    /**
     * Agrega los datos de un cliente a la base de datos
     */



    /**
     * Agrega los datos de una pelicula a la base de datos
     */










}
