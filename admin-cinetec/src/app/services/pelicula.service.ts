import { Injectable } from '@angular/core';
import { HttpHeaders, HttpClient } from '@angular/common/http';
import { Observable } from 'rxjs';


@Injectable({
  providedIn: 'root'
})
export class PeliculaService {
  public url: string;


  constructor(public _http: HttpClient
    ){
      this.url = "http://localhost:8081/"
     }

  getPeliculas(): Observable<any>{
    return this._http.get(this.url+'api/pelicula')
  }

  getProyeccionByPelicula(nombre_pelicula: string | null): Observable<any>{
    console.log(this.url+'api/pelicula/ppstot/'+nombre_pelicula+'/proyec');
    console.log(this.url+'api/pelicula/ppstot/Venom:'+'%20'+'Carnage'+'%20'+'liberado');
    return this._http.get(this.url+'api/pelicula/ppstot/'+nombre_pelicula);
  }

  getPeliculaByNombre(nombre_pelicula: string|null): Observable<any>{
    return this._http.get(this.url+'api/pelicula/p/'+nombre_pelicula);
  }

  deletePelicula(nombre_original: string | null){
    console.log(this.url+'api/quitmovie/'+nombre_original);
      this._http.delete(this.url+'api/pelicula/quitmovie/'+nombre_original).subscribe(data => {
      console.log(data);
    });
  }

  addPelicula(dataPelicula: Object): Observable<any>{
    return this._http.post(this.url+'api/pelicula/addmovie', dataPelicula);
  }

  updatePelicula(dataPelicula: Object): Observable<any>{
    return this._http.put(this.url+'api/pelicula/updatemovie', dataPelicula);
  }

  addProyeccion(dataProyeccion: Object): Observable<any>{
    return this._http.post(this.url+'api/pelicula/addpps', dataProyeccion);
  }

  deleteProyeccion(id_sucursal: string | null){
    console.log(this.url+'api/sucursal/quitsuc/'+id_sucursal);
      this._http.delete(this.url+'api/sucursal/quitsuc/'+id_sucursal).subscribe(data => {
      console.log(data);
    });
  }


}
