package tarea1.tec.cinetec;

import androidx.appcompat.app.AppCompatActivity;

import android.content.Intent;
import android.database.Cursor;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.os.Bundle;
import android.view.View;
import android.widget.ImageView;
import android.widget.TableLayout;
import android.widget.Toast;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;

public class Asientos extends AppCompatActivity {

    int numAsientos = 0;
    int contador = 0;
    int CEDULA;
    int Sucursal;
    String NombrePelicula = "";
    String HoraSeleccionada="";
    String ID_SALA = "";
    ArrayList<String> ASIENTOS = new ArrayList<String> ();



    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate (savedInstanceState);
        setContentView (R.layout.activity_asientos);
        Bundle bundle = this.getIntent ().getExtras ();

        numAsientos = bundle.getInt ("num_asientos");
        CEDULA = bundle.getInt ("cedula");
        NombrePelicula = bundle.getString ("pelicula");
        HoraSeleccionada = bundle.getString ("hora");
        Sucursal = bundle.getInt ("sucursal");
        CargarAsientos ();

    }

    /**
     *
     * @param view Objeto de la interfaz
     */
    public void AsientosClick(View view){
        ImageView imagen = (ImageView) view;
        int id = this.getResources ().getIdentifier (view.getResources().getResourceEntryName(view.getId()),"id",getPackageName ());

        if(imagen.getContentDescription ().equals ("seleccionado")){
            Bitmap bitmap = ((BitmapDrawable)getResources().getDrawable(R.drawable.asiento0)).getBitmap();
            imagen.setContentDescription ("desocupado");
            imagen.setImageBitmap (bitmap);
            ASIENTOS.remove (getResources ().getResourceEntryName (view.getId ()));
            contador--;
        }else if(imagen.getContentDescription ().equals ("Disponible") && view.getId () != R.id.A6 && view.getId () != R.id.A7 && contador<numAsientos){
            Bitmap bitmap = ((BitmapDrawable)getResources().getDrawable(R.drawable.asiento1)).getBitmap();
            imagen.setContentDescription ("seleccionado");
            imagen.setImageBitmap (bitmap);
            ASIENTOS.add (getResources ().getResourceEntryName (view.getId ()));
            contador++;
        }else if(imagen.getContentDescription ().equals ("Disponible") && contador<numAsientos && view.getResources ().getResourceEntryName (view.getId ()).equals ("A6") || imagen.getContentDescription ().equals ("Disponible") && contador<numAsientos && view.getResources ().getResourceEntryName (view.getId ()).equals ("A7")){
            Bitmap bitmap = ((BitmapDrawable)getResources().getDrawable(R.drawable.asiento1)).getBitmap();
            imagen.setContentDescription ("seleccionadoDiscapacitado");
            imagen.setImageBitmap (bitmap);
            ASIENTOS.add (getResources ().getResourceEntryName (view.getId ()));
            contador++;
        }else if(imagen.getContentDescription ().equals ("seleccionadoDiscapacitado")){
            Bitmap bitmap = ((BitmapDrawable)getResources().getDrawable(R.drawable.asiento4)).getBitmap();
            imagen.setContentDescription ("Disponible");
            imagen.setImageBitmap (bitmap);
            ASIENTOS.remove (getResources ().getResourceEntryName (view.getId ()));
            contador--;
        }

    }

    public void CargarAsientos(){
        final BaseDeDatos db = new BaseDeDatos (Asientos.this);
        Cursor c = db.ObtenerPeliHoras (NombrePelicula);
        if(c.moveToFirst () != false){
            do{
                if(HoraSeleccionada.equals (c.getString (0)) && Sucursal == c.getInt (2)){
                    ID_SALA = String.valueOf (c.getInt (1));
                }

            }while (c.moveToNext ());
        }
        Cursor c1 = db.ObtenerAsientosSala (ID_SALA);

        if(c1.moveToFirst () != false){

            do{
                int id = this.getResources ().getIdentifier (c1.getString (0),"id",getPackageName ());
                ImageView img = findViewById (id);
                if(c1.getString (1).equals ("Disponible") && id != R.id.A6 && id != R.id.A7){
                    Bitmap bitmap = ((BitmapDrawable)getResources().getDrawable(R.drawable.asiento0)).getBitmap();
                    img.setContentDescription ("Disponible");
                    img.setImageBitmap (bitmap);
                }else if(c1.getString (1).equals ("Disponible") && id == R.id.A6 || c1.getString (1).equals ("Disponible") && id == R.id.A7){
                    Bitmap bitmap = ((BitmapDrawable)getResources().getDrawable(R.drawable.asiento4)).getBitmap();
                    img.setContentDescription ("Disponible");
                    img.setImageBitmap (bitmap);
                }else if(c1.getString (1).equals ("Ocupado")){
                    Bitmap bitmap = ((BitmapDrawable)getResources().getDrawable(R.drawable.asiento2)).getBitmap();
                    img.setContentDescription ("Ocupado");
                    img.setImageBitmap (bitmap);
                }else if(c1.getString (1).equals ("Restringido")){
                    img.setVisibility (View.INVISIBLE);
                }


            }while (c1.moveToNext ());
        }


    }

    /**
     *
     * @param view Objeto de la interfaz
     */
    public void Confirmar(View view){
        if(contador==numAsientos){
            final BaseDeDatos db = new BaseDeDatos (Asientos.this);
            Date c = Calendar.getInstance().getTime();
            SimpleDateFormat df = new SimpleDateFormat("dd-MMM-yyyy");
            String formattedDate = df.format(c);
            for (int i = 0; i < ASIENTOS.size (); i++) {
                db.ActualizarAsiento ("'Ocupado'","'"+ID_SALA+"'","'"+ASIENTOS.get (i)+"'");
                Intent intent = new Intent (this,Factura.class);
                intent.putExtra ("cedula", CEDULA);
                intent.putExtra ("detalle", "Numero de asientos:"+String.valueOf (numAsientos)+"\n"+"Pelicula:"+NombrePelicula+"\n"+"Sala:"+ID_SALA+"\n"+"Hora:"+HoraSeleccionada);
                intent.putExtra ("fecha", formattedDate);
                startActivity (intent);

            }

        }else{
            Toast.makeText (Asientos.this, "No has seleccionado todos los campos", Toast.LENGTH_SHORT).show ();
        }
    }
    public void ATRAS(View view){
        super.onBackPressed ();
    }

}