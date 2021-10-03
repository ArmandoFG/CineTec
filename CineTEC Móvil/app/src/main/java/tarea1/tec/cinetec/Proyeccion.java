package tarea1.tec.cinetec;

import androidx.appcompat.app.AppCompatActivity;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.ListView;
import android.widget.Toast;

import java.util.ArrayList;

public class Proyeccion extends AppCompatActivity {

    String NombrePelicula = "";

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate (savedInstanceState);
        setContentView (R.layout.activity_proyeccion);
        Bundle bundle = this.getIntent ().getExtras ();
        CargarHoras ();

        NombrePelicula = bundle.getString ("nombre");

        Toast.makeText (Proyeccion.this, NombrePelicula, Toast.LENGTH_SHORT).show ();
    }


    public void CargarHoras(){

        ListView listview;
        ArrayList<String> horas;
        listview = findViewById (R.id.Lista_pro);
        horas = new ArrayList<String> ();
        horas.add ("8:00");
        horas.add ("10:00");
        horas.add ("15:00");

        ArrayAdapter<String> adaptador = new ArrayAdapter<String> (this,android.R.layout.simple_list_item_1,horas);

        listview.setAdapter (adaptador);

        listview.setOnItemClickListener(new AdapterView.OnItemClickListener() {
            @Override
            public void onItemClick(AdapterView adapter, View view, int position, long arg) {

                Intent Asientos = new Intent(Proyeccion.this, Asientos.class);
                startActivity(Asientos);
            }
        });

}
}