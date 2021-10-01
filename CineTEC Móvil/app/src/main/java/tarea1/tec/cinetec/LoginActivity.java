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


public class LoginActivity extends AppCompatActivity {


    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate (savedInstanceState);
        setContentView (R.layout.activity_login);





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


        if(String.valueOf(PassText.getText ()).equals (pass)){
            Ini_Principal ();
        }else{
            Toast.makeText(LoginActivity.this, "Usuario o contraseña incorrecta", Toast.LENGTH_SHORT).show();
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



}
