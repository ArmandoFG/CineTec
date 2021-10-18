import { Component, OnInit } from '@angular/core';
import { SucursalService } from 'src/app/services/sucursal.service';
import { MatTableDataSource } from '@angular/material/table';

@Component({
  selector: 'app-sucursales',
  templateUrl: './sucursales.component.html',
  styleUrls: ['./sucursales.component.css'],
  providers: [SucursalService]
})

/**
 * Clase para el componente de Sucursales
 * @author Carmen Araya
 * */
export class SucursalesComponent implements OnInit {
  public sucursalesData: any;
  listSucursales: any[] = [];
  estado = "Restriccion Covid"; 

  displayedColumns: string[] = ['id_sucursal', 'nombre_cine', 'ubicacion', 'cantidad_salas', 'acciones'];
  dataSource!: MatTableDataSource<any>;

    /**
   * Metodo que constructor de la clase
   * @param PeliculaService Servicio de Pelicula
   *
   * */
  constructor(
    private _sucursalService: SucursalService
  ) { }

  /**
  * Metodo que ejecuta otros metodos al correr la aplicación
  * */
  ngOnInit(): void {
    this.cargarSucursales();
  }

  /**
   * Metodo para activar las Restricciones por covid
  * */
  restriccionCovid(){
    if( this.estado == "Restriccion Covid"){
      this._sucursalService.covidRestriccion().subscribe(data => {
      console.log(data);
      });
      this.estado = "Habilitar Asientos";
    }else{
      this._sucursalService.habilitarAsientos().subscribe(data => {
        console.log(data);
        });
      this.estado = "Restriccion Covid"
    }
  }

    /**
  * Metodo que carga las Sucursale que existen en el servicio y las muestra en la tabla
  * */
  cargarSucursales(){
    this.listSucursales = [];
    this._sucursalService.getSucursales().subscribe(
      result => {
        result;
        var i = 0;
        while(result[i] != undefined){
          this.listSucursales.push({id_sucursal:result[i].id_sucursal,
              nombre_cine:result[i].nombre_cine, ubicacion:result[i].ubicacion,
              cantidad_salas:result[i].cantidad_salas});
              i++;
        }
        this.dataSource = new MatTableDataSource(this.listSucursales)
        console.log(this.listSucursales)
      },
      error => {
        console.log("hola")
      });
  }

  /**
  * Metodo que elimina un elemento del Servicio y recarga los elementos de la tabla
  * @param index indice del elemento a eliminar
  *
  * */
  eliminarSucursal(index: number){
    console.log(this.listSucursales[index].id_sucursal)
    this._sucursalService.deleteSucursal(this.listSucursales[index].id_sucursal);
    this.listSucursales = [];
    this.cargarSucursales();
  }

}
