import { Injectable } from '@angular/core';
import { HttpClient, HttpHeaders } from '@angular/common/http';
import { Observable } from 'rxjs';
/**
 * @interface provee la data de guardar de una pelicula
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
/** Debe ser injectable para poder utilizarlo en otros componentes */
@Injectable({
  providedIn: 'root'
})
/** Servicio que provee funcionalidadeds para obtener data de peliculas de la base de datos */
export class PeliculaService {
  public url:string; /** url del API donde se obtiene data */
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
  public asientos: string[]=[]; /** guarda asientos elegidos por un usuario */
  /**
   * 
   * @param _http para poder hacer llamadas al api
   */
  constructor(
    public _http: HttpClient
  ) {
    this.url='http://localhost:8081/';
   }
   /**
    * Obtiene las sucursales existentes de la base de datos
    * @returns objeto observable de las sucursales
    */
   getSucursales():Observable<any>{
     this.sucursalInfo=this._http.get(this.url+'api/sucursal/nombres');
    return this.sucursalInfo;
  }
  /**
   * Obtiene las peliculas de una sucursal
   * @param sucursal sucursal de donde se quiere obtener informacion
   * @returns objeto observable de las peliculas
   */
  getPeliculasSucursal(sucursal:string):Observable<any>{
    this.peliculaInfo= this._http.get(this.url+'api/sucursal/proyecciones/'+sucursal);
    return this.peliculaInfo;
  }
  /**
   * 
   * @param nombrePeli nombre de la pelicula 
   * @param cineNom nombre de la sucursal elegida
   */
  setPeliculaInfo(nombrePeli:string, cineNom:string){
    
    this.pelicula.nombrePelicula= nombrePeli;
    this.pelicula.nombreCine=cineNom;
    
  }
  /**
   * Obtiene el link de la imagen de una pelicula
   * @param nombre nombre de la pelicula
   * @returns observable con la info de una pelicula
   */
  getSrcPelicula(nombre:string): Observable<any>{
    return this._http.get(this.url+'api/pelicula/p/'+ nombre);
  }
  /**
   * Obtiene todas las horas en que una pelicula se puede dar
   * @returns observable de las horas
   */
  getHoraPelicula():Observable<any>{
    return this._http.get(this.url+"api/sucursal/horas/"+
    this.pelicula.nombreCine+"/"+this.pelicula.nombrePelicula);
  }
  /**
   * Obtiene la sala que se va a presentar la pelicula
   * @returns observable de la sala
   */
  getSala(): Observable<any>{
    var mystring=this.url+'api/sucursal/sala/'+
    this.pelicula.nombreCine+"/"+ this.pelicula.nombrePelicula+"/"+this.pelicula.hora;
    this.salaInfo= this._http.get(mystring);
    return this.salaInfo;
  }
  /** setea la hora seleccionada por el usuario */
  setHora(hora:string){
    this.pelicula.hora=hora;
  }
  /** Setea la sala de la pelicula seleccionada por el usuario */
  setSala(numSala:string){
    this.pelicula.sala=numSala;
  }
  /**
   * Obtiene los asientos de una sala especifica
   * @returns observable de los asientos
   */
  getAsientos(): Observable<any>{
    console.log("estoy en get asientos y es sala "+ this.pelicula.sala);
    return this._http.get(this.url+"api/asiento/sala/"+this.pelicula.sala);
  }
  /** Hace un update del estado de un asiento para cambiar su disponibilidad*/
  cambiarEstadoAsiento(estado:any){
    let params= JSON.stringify(estado);
    let headers= new HttpHeaders().set('Content-Type', 'application/json');

    return this._http.put(this.url+'api/asiento/syncAsiento', params, {headers: headers});
  }
  /** Agrega un asiento a la lista de asientos */
  agregarAsiento(asiento:string){
    this.asientos.push(asiento);
  }
  /**
   * Obtiene la lista de asientos que son los seleccionados por el usuario
   * @returns lista de asientos
   */
  getAsientosSeleccionados(){
    return this.asientos;
  }
  /** Setea las cantidades de tiquetes para diferentes personas */
  setCantidades(ninos:number,adultos:number,viejos:number){
    this.pelicula.cantidadNino=ninos;
    this.pelicula.cantidadAdulto=adultos;
    this.pelicula.cantidadMayor=viejos;
  }
  /** setea los precios de las entradas */
  setPrecios(nino:string, adulto:string, mayor:string){
    this.pelicula.precioNino=nino;
    this.pelicula.precioAdulto=adulto;
    this.pelicula.precioMayor=mayor;
  }
  /**
   * Obtiene la cantidad de tiquetes comprados
   * @returns numero de la cantidad de tiquetes 
   */
  getCantidadTotal():number{
    var suma= this.pelicula.cantidadNino+this.pelicula.cantidadMayor+this.pelicula.cantidadAdulto;
    return suma;
  }
  

}
