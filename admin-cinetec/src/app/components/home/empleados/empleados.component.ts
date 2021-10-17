import { Component, OnInit, ViewChild, AfterViewInit,} from '@angular/core';
import { MatTableDataSource } from '@angular/material/table';
import { EmpleadoService } from 'src/app/services/empleado.service';
import {MatPaginator} from '@angular/material/paginator';
import {MatSort} from '@angular/material/sort';

@Component({
  selector: 'app-empleados',
  templateUrl: './empleados.component.html',
  styleUrls: ['./empleados.component.css'],
  providers: [EmpleadoService]
})
export class EmpleadosComponent implements OnInit {
  
  public empleados: any;
  listEmpleados: any[] = [];

  displayedColumns: string[] = ['nombre', 'cedula', 'usuario', 'pass', 'rol_name', 'id_sucursal', 'acciones'];
  dataSource!: MatTableDataSource<any>;
  

  @ViewChild(MatPaginator) paginator!: MatPaginator;


  constructor(
    private _empleadoService: EmpleadoService
    ){ }

  ngOnInit(): void {
    this.cargarEmpleados();
  }


  cargarEmpleados(){
    this._empleadoService.getEmpleados().subscribe(
      result => {
        result;
        var i = 0;
        while(result[i] != undefined){
          this.listEmpleados.push({nombre:result[i].nombre1+' '+result[i].nombre2+' '+
                                  result[i].apellido1+' '+result[i].apellido2, 
                                  cedula:result[i].cedula, id_sucursal:result[i].id_sucursal, 
                                  rol_name:result[i].rol_name,
                                  usuario:result[i].usuario, pass:result[i].pass});
          i++;
        }
        this.dataSource = new MatTableDataSource(this.listEmpleados)
        this.dataSource.paginator = this.paginator;
        console.log(this.listEmpleados)
      },
      error => {
        console.log("Error al cargar la lista de Empleados")
      });
  }

    /**
   * Metodo para realizar la busqueda por nombre de los elementos de la tabla
  * */
  applyFilter(event: Event) {
    const filterValue = (event.target as HTMLInputElement).value;
    this.dataSource.filter = filterValue.trim().toLowerCase();
  }

    
  cargarTablaEmpleados(){
    this.dataSource = new MatTableDataSource(this.listEmpleados)
  }

  eliminarEmpleado(index: number){
    console.log(this.listEmpleados[index].cedula)
    this._empleadoService.deleteEmpleado(this.listEmpleados[index].cedula);
    this.cargarEmpleados();
  }
  
}
