import { Component, OnInit } from '@angular/core';
import { PeliculaService } from 'src/app/services/pelicula.service';
import { MatTableDataSource } from '@angular/material/table';


@Component({
  selector: 'app-peliculas',
  templateUrl: './peliculas.component.html',
  styleUrls: ['./peliculas.component.css'],
  providers: [PeliculaService]
})
export class PeliculasComponent implements OnInit {
  
  public peliculasData: any;
  listPeliculas: any[] = [];

  displayedColumns: string[] = ['nombre', 'nombre_original', 'duracion', 'imagen', 'acciones'];
  dataSource!: MatTableDataSource<any>;  

  constructor(
    private _peliculaService: PeliculaService
  ) { }

  ngOnInit(): void {
    this.cargarPeliculas();
  }

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

  eliminarPelicula(index: number){
    this._peliculaService.deletePelicula(this.listPeliculas[index].nombre_original);
  }
}
