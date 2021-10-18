import { Component, OnInit } from '@angular/core';
import { PeliculaService } from 'src/app/services/pelicula.service';
import { MatTableDataSource } from '@angular/material/table';


@Component({
  selector: 'app-peliculas',
  templateUrl: './peliculas.component.html',
  styleUrls: ['./peliculas.component.css'],
  providers: [PeliculaService]
})

/**
 * Clase para el componente de las Peliculas
 * @author Carmen Araya
 * */
export class PeliculasComponent implements OnInit {
  
  public peliculasData: any;
  listPeliculas: any[] = [];

  displayedColumns: string[] = ['nombre', 'nombre_original', 'duracion', 'imagen', 'acciones'];
  dataSource!: MatTableDataSource<any>;  

    /**
   * Metodo que constructor de la clase
   * @param PeliculaService Servicio para el manejon de peliculas
   *
   * */
  constructor(
    private _peliculaService: PeliculaService
  ) { }


 /**
  * Metodo que ejecuta otros metodos al correr la aplicación
  * */
  ngOnInit(): void {
    this.cargarPeliculas();
  }

  /**
  * Metodo que carga las peliculas que existen en el servicio y las muestra en la tabla
  * */
  cargarPeliculas(){
    this.listPeliculas = [];
    this._peliculaService.getPeliculas().subscribe(
      result => {
        result;
        var i = 0;
        while(result[i] != undefined){
          this.listPeliculas.push({nombre:result[i].nombre, 
            nombre_original:result[i].nombre_original, duracion:result[i].duracion,
            imagen:result[i].imagen});
            i++
        }
        this.dataSource = new MatTableDataSource(this.listPeliculas)
        console.log(this.listPeliculas)
      },
      error => {
        console.log("hola")
      });
  }

  /**
  * Metodo que elimina una pelicula del Servicio y recarga los elementos de la tabla
  * @param index indice del elemento a eliminar
  *
  * */
  eliminarPelicula(index: number){
    this._peliculaService.deletePelicula(this.listPeliculas[index].nombre_original);
  }

}
