import { Component, OnInit } from '@angular/core';
import { Router } from '@angular/router';
import { PeliculaService } from 'src/app/services/pelicula.service';


@Component({
  selector: 'vistaprincipal',
  templateUrl: './vistaprincipal.component.html',
  styleUrls: ['./vistaprincipal.component.css']})
export class VistaprincipalComponent implements OnInit {
  peliculas: any[] = [];
  options = [
    {name: "", value:0}
  ]
  public selectedOption: any;
  constructor(
    private _peliculaService: PeliculaService,
    private router:Router
    
  ) { }
  
    
  ngOnInit(): void {
    this.peliculas= [];
    this.getSucursalesOpt();
      
  }

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
  elegirPelicula(nombre:string){
    this._peliculaService.pelicula.nombreCine=this.selectedOption;
    this._peliculaService.pelicula.nombrePelicula=nombre;
    this._peliculaService.setPeliculaInfo(nombre, this.selectedOption);
    console.log("Elegí la película en carte "+ this._peliculaService.pelicula.nombrePelicula);
    this.router.navigate(['/Proyecciones']);

  }
  


}
