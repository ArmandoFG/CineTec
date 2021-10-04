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

import java.io.ByteArrayOutputStream;
import java.io.File;
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

        generarCliente();
        SincronizarTablas();
        generarPelicula();




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
        db.AgregarCliente ("117790696",20, "Armando Fallas", "16-06-2000", 85465732,1,"Mando", "1234m");
    }

    /**
     * Agrega los datos de una pelicula a la base de datos
     */

    public void generarPelicula(){
        final BaseDeDatos db = new BaseDeDatos (LoginActivity.this);

        Bitmap bitmap = ((BitmapDrawable)getResources().getDrawable(R.drawable.imgpeli1)).getBitmap();;
        ByteArrayOutputStream baos = new ByteArrayOutputStream(20480);
        bitmap.compress(Bitmap.CompressFormat.PNG, 0 , baos);
        byte[] blob = baos.toByteArray();

        db.AgregarPelicula ("Pobochnyi effekt","La mano del demonio", "93 min", blob,"+16",3200,3200, 2500);
    }

    public void GenerarSucursales(){
        BaseDeDatos db = new BaseDeDatos (this);
        db.AgregarSucursal (0,"Cartago", "CineTec", 8);
        db.AgregarSucursal (1,"San José", "CineTec", 5);
        db.AgregarSucursal (2,"Heredia", "CineTec", 12);
        db.AgregarSucursal (3,"Puntarenas", "CineTec", 6);

    }

    /**
     * Metodo que envia una solicitud de tipo Get al API para obtener el listado de los movimientos de la cuenta
     * */
    public void SincronizarTablas()
    {
        Retrofit retrofit = new Retrofit.Builder().baseUrl(BASEURL)
        //Retrofit retrofit = new Retrofit.Builder().baseUrl("https://jsonplaceholder.typicode.com/")
                .addConverterFactory(GsonConverterFactory.create()).build();

        PeliculasAPI peliculaAPI=retrofit.create(PeliculasAPI.class);
        Call<List<Tabla_Peliculas>> call=peliculaAPI.find();
        call.enqueue(new Callback<List<Tabla_Peliculas>>() {
            @Override
            public void onResponse(Call<List<Tabla_Peliculas>> call, Response<List<Tabla_Peliculas>> response) {
                try
                {
                    //String listadoMovs = "";
                    Toast.makeText(LoginActivity.this, "entro la respuesta", Toast.LENGTH_SHORT).show();
                    if(response.isSuccessful()){
                        Toast.makeText(LoginActivity.this, "Conectado", Toast.LENGTH_SHORT).show();
                        List<Tabla_Peliculas> m=response.body();

                    }

                }catch (Exception ex){

                    Toast.makeText(LoginActivity.this, ex.getMessage(), Toast.LENGTH_SHORT).show();
                }
            }

            @Override
            public void onFailure(Call<List<Tabla_Peliculas>> call, Throwable t) {
                Toast.makeText(LoginActivity.this, t.toString(), Toast.LENGTH_SHORT).show();
            }
        });
    }



}
