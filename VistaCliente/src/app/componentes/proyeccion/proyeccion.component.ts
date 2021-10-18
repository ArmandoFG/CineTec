import { Component, OnInit } from '@angular/core';
import { Router } from '@angular/router';
import { PeliculaService } from 'src/app/services/pelicula.service';

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
export class ProyeccionComponent implements OnInit {
  proyecciones=[{hora:'8pm'}];
  public nombre_pelicula:string= this._peliculaService.pelicula.nombrePelicula;

  public peliculaInfo:PeliculaInfo={
    imgsrc:'',
    precioNino:'',
    precioAdulto:'',
    precioMayor:''
  }

  constructor(
    private _peliculaService: PeliculaService,
    private router:Router
  ) {
    
   }

  ngOnInit(): void {
    this.getHoras();
    this.getPeliculaInfo();
  }
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
  setHora(hora:string){
    this._peliculaService.pelicula.hora= hora;
    this.cargarCantidad();
    this.router.navigate(['Asientos']);
  }
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
  goBack(){
    this.router.navigate(['Cartelera']);
  }
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
