package tarea1.tec.cinetec;

import android.content.Context;
import android.os.Build;
import android.view.Gravity;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;

import androidx.annotation.NonNull;
import androidx.appcompat.widget.LinearLayoutCompat;
import androidx.cardview.widget.CardView;
import androidx.core.content.ContextCompat;
import androidx.recyclerview.widget.RecyclerView;

import com.bumptech.glide.Glide;

import java.util.List;

public class CarteleraAdaptar extends RecyclerView.Adapter<CarteleraAdaptar.moviesViewHolder>{
    private List<Movies> pelis_cartelera;
    private Context context;
    private static OnItemClickListener listener;


    /**
     *
     * @param pelis_cartelera Estructura de la lista de las peliculas
     * @param context
     * @param listener  Detecta si dan un click en una pelicula
     */

    public CarteleraAdaptar(List<Movies> pelis_cartelera, Context context, OnItemClickListener listener) {
        this.pelis_cartelera = pelis_cartelera;
        this.context = context;
        this.listener = listener;

    }


    @NonNull
    @Override
    public moviesViewHolder onCreateViewHolder(@NonNull ViewGroup parent, int viewType) {
        View v = LayoutInflater.from (parent.getContext ()).inflate (R.layout.nota_card_view, parent, false);
        return new moviesViewHolder (v);
    }

    @Override
    public void onBindViewHolder(@NonNull moviesViewHolder holder, int position) {
        RelativeLayout.LayoutParams rl = (RelativeLayout.LayoutParams) holder.cardView.getLayoutParams ();
        FrameLayout.LayoutParams fl = (FrameLayout.LayoutParams) holder.mensajeBg.getLayoutParams ();
        LinearLayoutCompat.LayoutParams llimage = (LinearLayoutCompat.LayoutParams) holder.image.getLayoutParams ();
        holder.cardView.setLayoutParams (rl);
        holder.mensajeBg.setLayoutParams (fl);
        holder.image.setLayoutParams (llimage);
        Glide.with(pelis_cartelera.get (position).getContext ()).load(pelis_cartelera.get (position).getImagen ()).into(holder.image);
        holder.texto_nombre.setText (pelis_cartelera.get (position).getNombre ());
        holder.cardView.setContentDescription (pelis_cartelera.get (position).getNombre ());

    }

    @Override
    public int getItemCount() {
        return pelis_cartelera.size ();

    }

    static class moviesViewHolder extends RecyclerView.ViewHolder implements View.OnClickListener{
    CardView cardView;
    ImageView image;
    TextView texto_nombre;
    LinearLayoutCompat mensajeBg;



    moviesViewHolder(View itemView){
        super(itemView);
        cardView = (CardView) itemView.findViewById (R.id.CardView_sms);
        image = (ImageView) itemView.findViewById (R.id.imageView2);
        mensajeBg = (LinearLayoutCompat) itemView.findViewById (R.id.mensajeBg);
        texto_nombre = (TextView) itemView.findViewById (R.id.Nombre_pelicula);
        cardView.setOnClickListener (this);

    }
        @Override
        public void onClick(View view) {

            listener.onItemClickListener(view, getAdapterPosition());
        }
}

    public interface OnItemClickListener{

        void onItemClickListener(View view, int position);
    }
}
