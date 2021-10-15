package tarea1.tec.cinetec;

import androidx.appcompat.app.AppCompatActivity;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.TextView;

public class Factura extends AppCompatActivity {
    int CEDULA;
    String DETALLE;
    String FECHA;
    int CLAVE;
    int CONSECUTIVO;
    int FACTID;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate (savedInstanceState);
        setContentView (R.layout.activity_factura);

        TextView EClave = findViewById (R.id.textView21);
        TextView EConsecutivo = findViewById (R.id.textView22);
        TextView EFact = findViewById (R.id.textView23);
        TextView EFecha = findViewById (R.id.textView24);
        TextView ECedula = findViewById (R.id.textView25);
        TextView EDetalle = findViewById (R.id.textView26);

        Bundle bundle = this.getIntent ().getExtras ();
        CEDULA = bundle.getInt ("cedula");
        DETALLE = bundle.getString ("detalle");
        FECHA = bundle.getString ("fecha");
        CLAVE = (int)(Math.random()*100000000+1);
        CONSECUTIVO = (int)(Math.random()*100000000+1);
        FACTID = (int)(Math.random()*100000000+1);

        EClave.setText (String.valueOf (CLAVE));
        EConsecutivo.setText (String.valueOf (CONSECUTIVO));
        EFact.setText (String.valueOf (FACTID));
        EFecha.setText (FECHA);
        ECedula.setText (String.valueOf (CEDULA));
        EDetalle.setText (DETALLE);

        BaseDeDatos db = new BaseDeDatos (this);
        db.AgregarFactura (CLAVE,CONSECUTIVO,FACTID,DETALLE,FECHA,CEDULA);

        Sincronizar sinc = new Sincronizar();
        sinc.EnviarDatosFactura (this);
        sinc.EnviarDatosAsientos (this);
    }

    /**
     *
     * @param view Elemento de la interfaz
     */
    public void inicio(View view){
        Intent principal = new Intent(this, Cartelera.class);
        principal.putExtra ("cedula", CEDULA);
        startActivity (principal);
    }
}