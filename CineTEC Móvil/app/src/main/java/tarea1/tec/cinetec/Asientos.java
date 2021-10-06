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

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate (savedInstanceState);
        setContentView (R.layout.activity_asientos);


    }
    public void AsientosClick(View view){
        ImageView imagen = (ImageView) view;

        if(imagen.getContentDescription ().equals ("seleccionado")){
            Bitmap bitmap = ((BitmapDrawable)getResources().getDrawable(R.drawable.asiento0)).getBitmap();
            imagen.setContentDescription ("desocupado");
            imagen.setImageBitmap (bitmap);
        }else if(imagen.getContentDescription ().equals ("desocupado")){
            Bitmap bitmap = ((BitmapDrawable)getResources().getDrawable(R.drawable.asiento1)).getBitmap();
            imagen.setContentDescription ("seleccionado");
            imagen.setImageBitmap (bitmap);
        }else{
            Bitmap bitmap = ((BitmapDrawable)getResources().getDrawable(R.drawable.asiento1)).getBitmap();
            imagen.setContentDescription ("seleccionado");
            imagen.setImageBitmap (bitmap);
        }
    }

}