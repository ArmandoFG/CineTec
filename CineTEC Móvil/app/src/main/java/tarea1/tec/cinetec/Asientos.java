package tarea1.tec.cinetec;

import androidx.appcompat.app.AppCompatActivity;

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

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate (savedInstanceState);
        setContentView (R.layout.activity_asientos);
        Bundle bundle = this.getIntent ().getExtras ();

        numAsientos = bundle.getInt ("num_asientos");




    }
    public void AsientosClick(View view){
        ImageView imagen = (ImageView) view;

        if(imagen.getContentDescription ().equals ("seleccionado")){
            Bitmap bitmap = ((BitmapDrawable)getResources().getDrawable(R.drawable.asiento0)).getBitmap();
            imagen.setContentDescription ("desocupado");
            imagen.setImageBitmap (bitmap);
            contador--;
        }else if(imagen.getContentDescription ().equals ("desocupado") && contador<numAsientos){
            Bitmap bitmap = ((BitmapDrawable)getResources().getDrawable(R.drawable.asiento1)).getBitmap();
            imagen.setContentDescription ("seleccionado");
            imagen.setImageBitmap (bitmap);
            contador++;
        }else if(imagen.getContentDescription ().equals ("desocupadoDiscapacitado") && contador<numAsientos){
            Bitmap bitmap = ((BitmapDrawable)getResources().getDrawable(R.drawable.asiento1)).getBitmap();
            imagen.setContentDescription ("seleccionadoDiscapacitado");
            imagen.setImageBitmap (bitmap);
            contador++;
        }else if(imagen.getContentDescription ().equals ("seleccionadoDiscapacitado")){
            Bitmap bitmap = ((BitmapDrawable)getResources().getDrawable(R.drawable.asiento4)).getBitmap();
            imagen.setContentDescription ("desocupadoDiscapacitado");
            imagen.setImageBitmap (bitmap);
            contador--;
        }

    }

}