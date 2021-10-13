import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { Observable } from 'rxjs';

interface Pelicula {
  nombrePelicula:string;
  nombreCine:string;
}
@Injectable({
  providedIn: 'root'
})
export class PeliculaService {
  public url:string;
  public peliculaInfo:any;
  public sucursalInfo:any;
  public pelicula: Pelicula={
    nombrePelicula:'',
    nombreCine:''
  }
  constructor(
    public _http: HttpClient
  ) {
    this.url='http://localhost:8081/';
   }

   getSucursales():Observable<any>{
     this.sucursalInfo=this._http.get(this.url+'api/sucursal/nombres');
    return this.sucursalInfo;
  }
  getPeliculasSucursal(sucursal:string):Observable<any>{
    this.peliculaInfo= this._http.get(this.url+'api/sucursal/proyecciones/'+sucursal);
    return this.peliculaInfo;
  }
  setPeliculaInfo(nombrePeli:string, cineNom:string){
    
    this.pelicula.nombrePelicula= nombrePeli;
    this.pelicula.nombreCine=cineNom;
    console.log("Nombre cine en servicioPeluca: "+ this.pelicula.nombreCine+
    "\n Nombre de pelicula en servicioPelicula: "+ this.pelicula.nombrePelicula);
  }
  getHoraPelicula():Observable<any>{
    return this._http.get(this.url+"api/sucursal/horas/"+
    this.pelicula.nombreCine+"/"+this.pelicula.nombrePelicula);
  }
}
