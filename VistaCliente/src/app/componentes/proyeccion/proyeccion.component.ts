import { Component, OnInit } from '@angular/core';
import { Router } from '@angular/router';
import { PeliculaService } from 'src/app/services/pelicula.service';

@Component({
  selector: 'proyeccion',
  templateUrl: './proyeccion.component.html',
  styleUrls: ['./proyeccion.component.css']
})
export class ProyeccionComponent implements OnInit {
  proyecciones=[{hora:'8pm'}];
  public nombre_pelicula:string= this._peliculaService.pelicula.nombrePelicula;

  constructor(
    private _peliculaService: PeliculaService,
    private router:Router
  ) {
    
   }

  ngOnInit(): void {
    this.getHoras();
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
    this.router.navigate(['Asientos']);
  }
  goBack(){
    this.router.navigate(['Cartelera']);
  }
  
  
}
