import { Component, OnInit } from '@angular/core';

@Component({
  selector: 'proyeccion',
  templateUrl: './proyeccion.component.html',
  styleUrls: ['./proyeccion.component.css']
})
export class ProyeccionComponent implements OnInit {
  proyecciones: any[] = [];
  public nombre_pelicula:any="";

  constructor() {
    
   }

  ngOnInit(): void {
    this.proyecciones= [
      {"hora": "8:00"},
      {"hora": "13:00"},
      {"hora": "23:00"}
    ]
    this.nombre_pelicula="Coco";
  }
  
}
