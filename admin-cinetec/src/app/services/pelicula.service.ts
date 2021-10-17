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

}
