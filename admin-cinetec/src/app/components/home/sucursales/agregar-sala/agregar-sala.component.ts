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

/**
 * Clase para el componente de Crear Tarjeta
 * @author Carmen Araya
 * */
export class AgregarSalaComponent implements OnInit {
  
  form: FormGroup;
  titulo = 'Agregar Nueva Sucursal';
  id_sucursal: string | null;
  nombre_cine: string | null;
  public salaSucursalData: any;
  listSalasSucursal: any[] = [];
  displayedColumns: string[] = ['id_sucursal', 'id_sala', 'capacidad', 'acciones'];
  dataSource!: MatTableDataSource<any>;

  
  /**
   * Metodo que constructor de la clase
   * @param FormBuilder formulario para crear un elemento
   * @param CardService Servicio de la Tarjeta
   * @param router 
   * @param ActivatedRoute 
   * */
  constructor(
    private _sucursalService: SucursalService,
    private aRoute: ActivatedRoute,
    private fb: FormBuilder,
    private router:Router
  ) {
    this.id_sucursal = this.aRoute.snapshot.paramMap.get("id_sucursal");
    this.nombre_cine = this.aRoute.snapshot.paramMap.get("nombre_cine");
    this.form = this.fb.group({
      nombre_cine: ['', Validators.required],
      ubicacion: ['', Validators.required],
      cantidad_salas: ['', Validators.required],
    })
    }

  /**
  * Metodo que ejecuta otros metodos al correr la aplicación
  * */
  ngOnInit(): void {
    this.cargarSalasSucursal();
  }

    /**
  * Metodo que carga las Salas por sucursal que existen en el servicio y las muestra en la tabla
  * */
  cargarSalasSucursal(){
    this.listSalasSucursal = [];
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

  /**
  * Metodo que carga la informacion
  * */
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

  /**
  * Metodo que ejecuta la accion editar o agregar segun una condicin
  * */
  agregarEditarSucursal(){
    if (this.id_sucursal != null){
      this.editarSucursal();
    }else{
      this.agregarSucursal();
    }
  }

  /**
  * Metodo que edita una tarjeta en el servicio y la actuliza en la tabla
  * */ 
  editarSucursal(){
    const sucursal: Object = {
      id_sucursal: Number(this.id_sucursal),
      nombre_cine: this.form.value.nombre_cine,
      ubicacion: this.form.value.ubicacion,
      cantidad_salas: this.form.value.cantidad_salas
    }
    this._sucursalService.updateSucursal(sucursal).subscribe(data => {
      console.log(data);
    });
    this.router.navigate(['/home/sucursales']);
  }

  /**
  * Metodo que agrega una tarjeta nueva al servicio y la carga en la tabla
  * */
  agregarSucursal(){
    if (this.form.invalid){
      return;
    }
    const sucursal: Object =
    {
      ubicacion: this.form.value.ubicacion,
      nombre_cine: this.form.value.nombre_cine,
      cantidad_salas: Number(this.form.value.cantidad_salas)
    }
    this._sucursalService.addNewSucursal(sucursal).subscribe(data => {
      console.log(data);
    });
    this.router.navigate(['/home/sucursales']);
  }

  eliminarSala(index: number){
    console.log(index)
  }

  agregarSala(){
    const sala: Object = {
      filas: 6,
      capacidad: 72,
      columnas: 12,
      id_sucursal: Number(this.id_sucursal)
    }
    this._sucursalService.addSala(sala).subscribe(data => {
      console.log(data);
    });
  }


}
