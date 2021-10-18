import { Component, OnInit } from '@angular/core';
import { Router } from '@angular/router';
import { PeliculaService } from 'src/app/services/pelicula.service';
/** Provee la estructura para almacenar la data de la pelicula seleccionada */
interface PeliculaInfo{
  imgsrc:string,
  precioNino:string,
  precioAdulto:string,
  precioMayor:string,
}
@Component({
  selector: 'proyeccion',
  templateUrl: './proyeccion.component.html',
  styleUrls: ['./proyeccion.component.css']
})
/** Contiene la informacion de las proyecciones de una pelicula */
export class ProyeccionComponent implements OnInit {
  proyecciones=[{hora:'8pm'}]; /**Se inicia con un valor para tener una estructura basica del array */
  public nombre_pelicula:string= this._peliculaService.pelicula.nombrePelicula; /**Carga el nombre de la pelicula */

  public peliculaInfo:PeliculaInfo={
    imgsrc:'',
    precioNino:'',
    precioAdulto:'',
    precioMayor:''
  }
  /**
   * 
   * @param _peliculaService carga la data de una pelicula desde el servicio
   * @param router para el sistema de rutas del programa
   */
  constructor(
    private _peliculaService: PeliculaService,
    private router:Router
  ) {
    
   }
   /**cuando se inicia setea las horas de la pelicula y se obtiene la informacion de una pelicula */
  ngOnInit(): void {
    this.getHoras();
    this.getPeliculaInfo();
  }
  /** Obtiene las horas de una pelicula desde interfaz */
  getHoras(){
    this._peliculaService.getHoraPelicula().subscribe(
      result => {
        result;
        this.proyecciones=[];
        var counter=0;
        console.log(result)
        while(result[counter]!=undefined){
          var auxiliar=result[counter];
          this.proyecciones.push({hora: auxiliar});
          counter++;
        }
      },
      error => {
        console.log("hubo algun error obteniendo Sucursales \n" + <any>error);
        alert("Error obteniendo las sucursales \n Vuelva a ingresar al sistema");
      }
    ); 
  }
  /** Setea un valor de hora una vez que el usuario la ha seleccionado */
  setHora(hora:string){
    this._peliculaService.pelicula.hora= hora;
    this.cargarCantidad();
    this.router.navigate(['Asientos']);
  }
  /** setea la informacion de una pelicula proveniente de la base de datos con el servicio */
  getPeliculaInfo(){
    this._peliculaService.getSrcPelicula(this._peliculaService.pelicula.nombrePelicula).subscribe(
      result => {
        this.peliculaInfo.imgsrc=result.imagen;
        this.peliculaInfo.precioNino= result.precio_menores;
        this.peliculaInfo.precioAdulto=result.precio_adultos;
        this.peliculaInfo.precioMayor= result.precio_tercera_edad;
        this._peliculaService.setPrecios(this.peliculaInfo.precioNino, this.peliculaInfo.precioAdulto,
          this.peliculaInfo.precioMayor);
      },
      error => {
        console.log("hubo algun error obteniendo el source de la imagen \n" + <any>error);
        alert("Error obteniendo las imagenes \n Vuelva a ingresar al sistema");
      }
    );
    
  }
  /** Se devuelve a la pagina anterior */
  goBack(){
    this.router.navigate(['Cartelera']);
  }
  /** Para cargar la cantidad de entradas que ha solicitado el usuario */
  cargarCantidad(){
    console.log("cargando cantidad");
    var cantidadNinos=(<HTMLInputElement>document.getElementById('kids')).value;
    var cantidadAdultos=(<HTMLInputElement>document.getElementById('adulto')).value;
    var cantidadViejos=(<HTMLInputElement>document.getElementById('mayor')).value;
    var suma= parseInt(cantidadNinos)+ parseInt(cantidadViejos)+ parseInt(cantidadAdultos);
    this._peliculaService.setCantidades(parseInt(cantidadNinos),parseInt(cantidadAdultos),parseInt(cantidadViejos));
    console.log("la cantidad de todo que hay es: "+suma);
  }
  
  
  
}
