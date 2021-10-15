import { Injectable } from '@angular/core';
import { HttpClient, HttpHeaders } from '@angular/common/http';
import { Observable } from 'rxjs';
/**
 * @interface 
 */
interface Pelicula {
  nombrePelicula:string;
  nombreCine:string;
  hora:string;
  sala:string;
}
@Injectable({
  providedIn: 'root'
})
export class PeliculaService {
  public url:string;
  public peliculaInfo:any;
  public sucursalInfo:any;
  public salaInfo:any;
  public pelicula: Pelicula={
    nombrePelicula:'',
    nombreCine:'',
    hora:'',
    sala:''
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
    
  }
  getHoraPelicula():Observable<any>{
    return this._http.get(this.url+"api/sucursal/horas/"+
    this.pelicula.nombreCine+"/"+this.pelicula.nombrePelicula);
  }
  getSala(): Observable<any>{
    var mystring=this.url+'api/sucursal/sala/'+
    this.pelicula.nombreCine+"/"+ this.pelicula.nombrePelicula+"/"+this.pelicula.hora;
    this.salaInfo= this._http.get(mystring);
    return this.salaInfo;
  }
  setHora(hora:string){
    this.pelicula.hora=hora;
  }
  setSala(numSala:string){
    this.pelicula.sala=numSala;
  }
  getAsientos(): Observable<any>{
    console.log("estoy en get asientos");
    return this._http.get(this.url+"api/asiento/sala/"+this.pelicula.sala);
  }
  cambiarEstadoAsiento(estado:any){
    let params= JSON.stringify(estado);
    let headers= new HttpHeaders().set('Content-Type', 'application/json');

    return this._http.put(this.url+'api/asiento/syncAsiento', params, {headers: headers});
  }
  

}
