import { Component, OnInit } from '@angular/core';
import { Router } from '@angular/router';
import { PeliculaService } from 'src/app/services/pelicula.service';


@Component({
  selector: 'vistaprincipal',
  templateUrl: './vistaprincipal.component.html',
  styleUrls: ['./vistaprincipal.component.css']})
  /** Carga la primera vista del programa que ve el usuario despues del login */
export class VistaprincipalComponent implements OnInit {
  peliculas: any[] = []; /** guarda todas las peliculas disponibles en una sucursal */
  options = [
    {name: "", value:0}
  ]
  public selectedOption: any; /** Guarda la opcion elegida de sucursal */
  constructor(
    private _peliculaService: PeliculaService,
    private router:Router
    
  ) { }
  
  /** inicia el valor del atributo peliculas y llama al metodo de obtener sucursales */
  ngOnInit(): void {
    this.peliculas= [];
    this.getSucursalesOpt();
      
  }

  /** Obtiene todas las sucursales disponibles de la base de datos */
  getSucursalesOpt(){
    this._peliculaService.getSucursales().subscribe(
      result => {
        result;
        var counter=0;
        while(result[counter]!=undefined ){
          this.options.push({name:result[counter], value:counter});
          counter++;
        }
        
      },
      error => {
        console.log("hubo algun error obteniendo Sucursales \n" + <any>error);
        alert("Error obteniendo las sucursales \n Vuelva a ingresar al sistema");
      }
    ); 
  }
  /** Obtiene todas las peliculas disponibles en una sucursal especifica */
  getPeliculas(){
    this._peliculaService.getPeliculasSucursal(this.selectedOption).subscribe(
      result => {
        this.peliculas=[];
        result;
        var counter=0;

        
        while(result[counter]!=undefined){
          this.peliculas.push({nombre:result[counter].toString()});
          counter++;
        }
      },
      error => {
        console.log("hubo algun error obteniendo Sucursales \n" + <any>error);
        alert("Error obteniendo las sucursales \nVuelva a ingresar al sistema");
      }
    );
    console.log("Opcion elegida es: "+this.selectedOption);
  } 
  /** Cuando el usuario elige una pelicula se seta la informacion en el servicio para guardarlo
   * y se abre la siguiente vista de proyecciones
   */
  elegirPelicula(nombre:string){
    this._peliculaService.pelicula.nombreCine=this.selectedOption;
    this._peliculaService.pelicula.nombrePelicula=nombre;
    this._peliculaService.setPeliculaInfo(nombre, this.selectedOption);
    console.log("Elegí la película en carte "+ this._peliculaService.pelicula.nombrePelicula);
    this.router.navigate(['/Proyecciones']);

  }
  


}
