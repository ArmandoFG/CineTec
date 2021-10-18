import { Component, OnInit } from '@angular/core';
import { SucursalService } from 'src/app/services/sucursal.service';
import { MatTableDataSource } from '@angular/material/table';

@Component({
  selector: 'app-sucursales',
  templateUrl: './sucursales.component.html',
  styleUrls: ['./sucursales.component.css'],
  providers: [SucursalService]
})
export class SucursalesComponent implements OnInit {
  public sucursalesData: any;
  listSucursales: any[] = [];
  estado = "Restriccion Covid"; 

  displayedColumns: string[] = ['id_sucursal', 'nombre_cine', 'ubicacion', 'cantidad_salas', 'acciones'];
  dataSource!: MatTableDataSource<any>;

  constructor(
    private _sucursalService: SucursalService
  ) { }

  ngOnInit(): void {
    this.cargarSucursales();
  }



  restriccionCovid(){
   /* this._sucursalService.covidRestriccion().subscribe(data => {
      console.log(data);
    });*/
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

  eliminarSucursal(index: number){
    console.log(this.listSucursales[index].id_sucursal)
    this._sucursalService.deleteSucursal(this.listSucursales[index].id_sucursal);
    this.listSucursales = [];
    this.cargarSucursales();
  }

}
