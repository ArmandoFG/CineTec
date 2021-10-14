package tarea1.tec.cinetec;

import androidx.appcompat.app.AppCompatActivity;

import android.content.Intent;
import android.database.Cursor;
import android.os.Bundle;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.Button;
import android.widget.ListView;
import android.widget.TextView;
import android.widget.Toast;

import java.util.ArrayList;

public class Proyeccion extends AppCompatActivity {

    public String NombrePelicula = "";
    public int Sucursal;
    public int CEDULA;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate (savedInstanceState);
        setContentView (R.layout.activity_proyeccion);
        Bundle bundle = this.getIntent ().getExtras ();

        NombrePelicula = bundle.getString ("nombre");
        Sucursal = bundle.getInt ("sucursal");
        CEDULA = bundle.getInt ("cedula");

        CargarHoras ();
        CargarPrecios ();


    }


    public void CargarHoras(){
        final BaseDeDatos db = new BaseDeDatos (Proyeccion.this);

        Cursor c = db.ObtenerHoras (String.valueOf (Sucursal));
        ListView listview;
        ArrayList<String> horas;
        listview = findViewById (R.id.Lista_pro);
        horas = new ArrayList<String> ();


        if(c.moveToFirst () != false){
            do{

                if(NombrePelicula.equals (c.getString (0))){
                    horas.add (c.getString (1));
                }
            }while (c.moveToNext ());
        }


        ArrayAdapter<String> adaptador = new ArrayAdapter<String> (this,android.R.layout.simple_list_item_1,horas);

        listview.setAdapter (adaptador);

        listview.setOnItemClickListener(new AdapterView.OnItemClickListener() {
            @Override
            public void onItemClick(AdapterView adapter, View view, int position, long arg) {

                TextView TN = findViewById (R.id.textView11);
                TextView TA = findViewById (R.id.textView12);
                TextView T3A = findViewById (R.id.textView13);

                if(TN.getText ().equals ("0") && TA.getText ().equals ("0") && T3A.getText ().equals ("0")){
                    Toast.makeText(Proyeccion.this, "Elegir cantidad de entradas", Toast.LENGTH_SHORT).show();

                }else{

                    int asientos = Integer.parseInt (TN.getText ().toString ()) + Integer.parseInt (TA.getText ().toString ())+ Integer.parseInt (T3A.getText ().toString ());

                    Intent Asientos = new Intent(Proyeccion.this, Asientos.class);
                    Asientos.putExtra ("num_asientos", asientos);
                    Asientos.putExtra ("cedula",CEDULA);
                    Asientos.putExtra ("pelicula",NombrePelicula);
                    String text = (String) listview.getItemAtPosition(position);
                    Asientos.putExtra ("hora",text);
                    Asientos.putExtra ("sucursal", Sucursal);
                    startActivity(Asientos);
                }

            }
        });

}

    /**
     *
     * @param view Objeto de la interfaz
     */
    public void SumarRestarN(View view){
        TextView TN = findViewById (R.id.textView11);
        Button Bmas = findViewById (R.id.button2);
        Button Bmenos = findViewById (R.id.button5);

        if(view.getId () == Bmas.getId ()){
            int num = Integer.parseInt (TN.getText ().toString ());
            num++;
            TN.setText (String.valueOf (num));
        }else if(view.getId () == Bmenos.getId () && Integer.parseInt (TN.getText ().toString ()) != 0){
            int num = Integer.parseInt (TN.getText ().toString ());
            num--;
            TN.setText (String.valueOf (num));
        }
    }

    /**
     *
     * @param view Objeto de la interfaz
     */
    public void SumarRestarA(View view){
        TextView TN = findViewById (R.id.textView12);
        Button Bmas = findViewById (R.id.button3);
        Button Bmenos = findViewById (R.id.button6);

        if(view.getId () == Bmas.getId ()){
            int num = Integer.parseInt (TN.getText ().toString ());
            num++;
            TN.setText (String.valueOf (num));
        }else if(view.getId () == Bmenos.getId () && Integer.parseInt (TN.getText ().toString ()) != 0){
            int num = Integer.parseInt (TN.getText ().toString ());
            num--;
            TN.setText (String.valueOf (num));
        }
    }

    /**
     *
     * @param view Objeto de la interfaz
     */

    public void SumarRestar3A(View view){
        TextView TN = findViewById (R.id.textView13);
        Button Bmas = findViewById (R.id.button4);
        Button Bmenos = findViewById (R.id.button7);

        if(view.getId () == Bmas.getId ()){
            int num = Integer.parseInt (TN.getText ().toString ());
            num++;
            TN.setText (String.valueOf (num));
        }else if(view.getId () == Bmenos.getId () && Integer.parseInt (TN.getText ().toString ()) != 0){
            int num = Integer.parseInt (TN.getText ().toString ());
            num--;
            TN.setText (String.valueOf (num));
        }
    }

    public void CargarPrecios(){
        final BaseDeDatos db = new BaseDeDatos (Proyeccion.this);
        Cursor c = db.ObtenerPrecios (NombrePelicula);
        TextView PrecioN = findViewById (R.id.textView8);
        TextView PrecioA = findViewById (R.id.textView9);
        TextView Precio3A = findViewById (R.id.textView10);


        if (c != null && c.moveToFirst()){
            do{

                PrecioN.setText (PrecioN.getText ()+" "+c.getString (0));
                PrecioA.setText (PrecioA.getText ()+" "+c.getString (1));
                Precio3A.setText (Precio3A.getText ()+" "+c.getString (2));

            }while (c.moveToNext ());

        }
    }
}