package tarea1.tec.cinetec;

import androidx.appcompat.app.AppCompatActivity;

import android.database.Cursor;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.os.Bundle;
import android.view.View;
import android.widget.ImageView;
import android.widget.TableLayout;
import android.widget.Toast;

public class Asientos extends AppCompatActivity {

    int numAsientos = 0;
    int contador = 0;
    int CEDULA;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate (savedInstanceState);
        setContentView (R.layout.activity_asientos);
        Bundle bundle = this.getIntent ().getExtras ();

        numAsientos = bundle.getInt ("num_asientos");
        CEDULA = bundle.getInt ("cedula");



    }
    public void AsientosClick(View view){
        ImageView imagen = (ImageView) view;

        if(imagen.getContentDescription ().equals ("seleccionado")){
            Bitmap bitmap = ((BitmapDrawable)getResources().getDrawable(R.drawable.asiento0)).getBitmap();
            imagen.setContentDescription ("desocupado");
            imagen.setImageBitmap (bitmap);
            contador--;
        }else if(imagen.getContentDescription ().equals ("Disponible") && view.getId () != R.id.A6 && view.getId () != R.id.A7 && contador<numAsientos){
            Bitmap bitmap = ((BitmapDrawable)getResources().getDrawable(R.drawable.asiento1)).getBitmap();
            imagen.setContentDescription ("seleccionado");
            imagen.setImageBitmap (bitmap);
            contador++;
            Toast.makeText (Asientos.this, view.getResources ().getResourceEntryName (view.getId ()), Toast.LENGTH_SHORT).show ();
        }else if(imagen.getContentDescription ().equals ("Disponible") && contador<numAsientos && view.getResources ().getResourceEntryName (view.getId ()).equals ("A6") || imagen.getContentDescription ().equals ("Disponible") && contador<numAsientos && view.getResources ().getResourceEntryName (view.getId ()).equals ("A7")){
            Bitmap bitmap = ((BitmapDrawable)getResources().getDrawable(R.drawable.asiento1)).getBitmap();
            imagen.setContentDescription ("seleccionadoDiscapacitado");
            imagen.setImageBitmap (bitmap);
            contador++;
        }else if(imagen.getContentDescription ().equals ("seleccionadoDiscapacitado")){
            Bitmap bitmap = ((BitmapDrawable)getResources().getDrawable(R.drawable.asiento4)).getBitmap();
            imagen.setContentDescription ("Disponible");
            imagen.setImageBitmap (bitmap);
            contador--;
        }

    }

    public void CargarAsientos(){
        final BaseDeDatos db = new BaseDeDatos (Asientos.this);
        //Cursor c = db.ObtenerAsientosSala ();
    }

}