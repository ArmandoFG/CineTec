import { Component, OnInit } from '@angular/core';
import { SucursalService } from 'src/app/services/sucursal.service';
import { MatTableDataSource } from '@angular/material/table';
import { ActivatedRoute, Router, UrlSegment } from '@angular/router';
import { FormBuilder, FormGroup, Validators } from '@angular/forms';


@Component({
  selector: 'app-agregar-sala',
  templateUrl: './agregar-sala.component.html',
  styleUrls: ['./agregar-sala.component.css'],
  providers: [SucursalService]
})
export class AgregarSalaComponent implements OnInit {
  
  form: FormGroup;
  titulo = 'Agregar Nueva Sucursal';
  id_sucursal: string | null;
  nombre_cine: string | null;
  public salaSucursalData: any;
  listSalasSucursal: any[] = [];
  displayedColumns: string[] = ['id_sucursal', 'id_sala', 'capacidad', 'acciones'];
  dataSource!: MatTableDataSource<any>;


  constructor(
    private _sucursalService: SucursalService,
    private aRoute: ActivatedRoute,
    private fb: FormBuilder
  ) {
    this.id_sucursal = this.aRoute.snapshot.paramMap.get("id_sucursal");
    this.nombre_cine = this.aRoute.snapshot.paramMap.get("nombre_cine");
    this.form = this.fb.group({
      nombre_cine: ['', Validators.required],
      ubicacion: ['', Validators.required],
      cantidad_salas: ['', Validators.required],
    })
    }

  ngOnInit(): void {
    this.cargarSalasSucursal();
  }

  cargarSalasSucursal(){
    if (this.id_sucursal != null){
      this._sucursalService.getSalasBySucursal(this.id_sucursal).subscribe(
        result => {
          result;
          var i = 0;
          while(result[i] != undefined){
            this.listSalasSucursal.push({id_sucursal:result[i].id_sucursal,
                id_sala:result[i].id_sala, capacidad:result[i].capacidad});
                i++;
          }
          this.cargarInfoSucursal();
          this.dataSource = new MatTableDataSource(this.listSalasSucursal)
        },
        error => {
          console.log("hola")
        });
    }else{
      this.nombre_cine = "Agregar nueva Sucursal"
    }
  }

  cargarInfoSucursal(){
    this._sucursalService.getSucursalById(this.id_sucursal).subscribe(
      result => {
        console.log(result);
        this.form.setValue({
          nombre_cine: result.nombre_cine,
          ubicacion: result.ubicacion,
          cantidad_salas: result.cantidad_salas,
      });
    },
    error => {
    console.log("ERROR CON EL GET")
    });
  }

  agregarEditarSucursal(){
    if (this.id_sucursal != null){
      this.editarSucursal();
    }else{
      this.agregarSucursal();
    }
  }

  editarSucursal(){
    console.log("ES EDITAR")
  }

  
  agregarSucursal(){
    console.log("ES AGREGAR")
  }

  eliminarSala(index: number){
    console.log(index)
  }

  agregarSala(){
    console.log("Agregar Sala")
  }

  restriccionCovid(index: number){
    console.log("Restriccion por covid activada");
  }


}
