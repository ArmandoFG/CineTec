import { Component, OnInit, ViewChild } from '@angular/core';
import { MatTableDataSource } from '@angular/material/table';
import { ActivatedRoute, Router, UrlSegment } from '@angular/router';
import { PeliculaService } from 'src/app/services/pelicula.service';
import {MatPaginator} from '@angular/material/paginator';
var sala = [];

@Component({
  selector: 'app-proyecciones',
  templateUrl: './proyecciones.component.html',
  styleUrls: ['./proyecciones.component.css']
})

/**
 * Clase para el componente de Proyecciones
 * @author Carmen Araya
 * */
export class ProyeccionesComponent implements OnInit {

  nombre_pelicula: string | null;
  public proyeccionesData: any;
  listProyecciones: any[] = [];
  displayedColumns: string[] = ['nombre_cine' ,'sala_id', 'nombre_pelicula', 'hora', 'acciones'];
  dataSource!: MatTableDataSource<any>;


  @ViewChild(MatPaginator) paginator!: MatPaginator;

  constructor(
    private _proyeccionesService: PeliculaService,
    private aRoute: ActivatedRoute
  ) { 
    this.nombre_pelicula = this.aRoute.snapshot.paramMap.get("nombre_pelicula");
    }

  ngOnInit(): void {
    this.cargarProyecciones();
  }

  applyFilter(event: Event) {
    const filterValue = (event.target as HTMLInputElement).value;
    this.dataSource.filter = filterValue.trim().toLowerCase();
  }

  delete(){
    this.listProyecciones.pop();
    this.dataSource = new MatTableDataSource(this.listProyecciones)
  }

  cargarProyecciones(){
    if (this.nombre_pelicula != null){
      this._proyeccionesService.getProyeccionByPelicula(this.nombre_pelicula).subscribe(
        result => {
          result;
          var i = 0;
          while(result[i] != undefined){
            this.listProyecciones.push({nombre_cine:result[i].nombre_cine,
                sala_id:result[i].sala_id, nombre_pelicula:result[i].nombre_pelicula, hora:result[i].hora});
                i++;
          }
          this.dataSource = new MatTableDataSource(this.listProyecciones)
          this.dataSource.paginator = this.paginator;
          console.log(result);
        },
        error => {
          console.log("hola")
        });
    }else{
      this.nombre_pelicula = "NO HAY PROYECCIONES PARA MOSTRAR"
    }
  }

}
