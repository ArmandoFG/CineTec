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
  cantidadNino:number;
  cantidadAdulto:number;
  cantidadMayor:number;
  precioNino:string;
  precioAdulto:string;
  precioMayor:string;
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
    sala:'',
    cantidadNino:0,
    cantidadAdulto:0,
    cantidadMayor:0,
    precioNino:'',
    precioAdulto:'',
    precioMayor:''
  }
  public asientos: string[]=[];
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
  getSrcPelicula(nombre:string): Observable<any>{
    return this._http.get(this.url+'api/pelicula/p/'+ nombre);
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
    console.log("estoy en get asientos y es sala "+ this.pelicula.sala);
    return this._http.get(this.url+"api/asiento/sala/"+this.pelicula.sala);
  }
  cambiarEstadoAsiento(estado:any){
    let params= JSON.stringify(estado);
    let headers= new HttpHeaders().set('Content-Type', 'application/json');

    return this._http.put(this.url+'api/asiento/syncAsiento', params, {headers: headers});
  }
  agregarAsiento(asiento:string){
    this.asientos.push(asiento);
  }
  getAsientosSeleccionados(){
    return this.asientos;
  }
  setCantidades(ninos:number,adultos:number,viejos:number){
    this.pelicula.cantidadNino=ninos;
    this.pelicula.cantidadAdulto=adultos;
    this.pelicula.cantidadMayor=viejos;
  }
  setPrecios(nino:string, adulto:string, mayor:string){
    this.pelicula.precioNino=nino;
    this.pelicula.precioAdulto=adulto;
    this.pelicula.precioMayor=mayor;
  }
  getCantidadTotal():number{
    var suma= this.pelicula.cantidadNino+this.pelicula.cantidadMayor+this.pelicula.cantidadAdulto;
    return suma;
  }
  

}
