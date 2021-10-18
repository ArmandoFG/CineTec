import { identifierModuleUrl } from '@angular/compiler';
import { Component, OnInit } from '@angular/core';
import { FormBuilder, FormGroup, Validators } from '@angular/forms';
import { ActivatedRoute, Router, UrlSegment } from '@angular/router';
import { Observable } from 'rxjs';
import { EmpleadoService } from 'src/app/services/empleado.service';

@Component({
  selector: 'app-agregar-empleado',
  templateUrl: './agregar-empleado.component.html',
  styleUrls: ['./agregar-empleado.component.css']
})

/**
 * Clase para el componente de Crear Empleado
 * @author Carmen Araya
 * */
export class AgregarEmpleadoComponent implements OnInit {

  tipo: any[] = ['1', '2', '3', '4', '5' ]
  form: FormGroup;
  cedula: number | null;
  titulo = "Agregar Empleado";

  /**
   * Metodo que constructor de la clase
   * @param FormBuilder formulario para crear un elemento
   * @param EmpleapoService Servicio de Empleado
   * @param router 
   * @param ActivatedRoute 
   * */
  constructor(private fb: FormBuilder, 
    private _empleadoService: EmpleadoService,
    private router: Router,
    private aRoute: ActivatedRoute) {
    this.form = this.fb.group({
      nombre1: ['', Validators.required],
      nombre2: ['', Validators.required],
      apellido1: ['', Validators.required],
      apellido2: ['', Validators.required],
      cedula: ['', Validators.required],
      id_sucursal: ['', Validators.required],
      numero_telefono: ['', Validators.required],
      rol_name: ['', Validators.required],
      usuario: ['', Validators.required],
      password: ['', Validators.required],
    })
    this.cedula = Number(this.aRoute.snapshot.paramMap.get("cedula"));
   }
  
  /**
  * Metodo que ejecuta otros metodos al correr la aplicación
  * */  
  ngOnInit(): void {
    this.esEditar();
  }

  /**
  * Metodo que ejecuta la accion editar o agregar segun una condicin
  * */
  agregarEditarEmpleado(){
    if (this.cedula == 0){
      this.agregarEmpleado();
    }else{
      console.log(this.cedula)
      this.editarEmpleado();
    }
  }

  /**
  * Metodo que agrega un Empleado nuevo a la base de datos y la carga en la tabla
  * */
  agregarEmpleado(){
    if (this.form.invalid){
      return;
    }
    const empleado: Object =
    {
      nombre1: this.form.value.nombre1,
      nombre2: this.form.value.nombre2,
      apellido1: this.form.value.apellido1,
      apellido2: this.form.value.apellido2,
      cedula: Number(this.form.value.cedula),
      fecha_de_nacimiento: "05/10/1974",
      fecha_ingreso: "06/10/2020",
      numero_telefono: Number(this.form.value.numero_telefono),
      edad: 0,
      pass: this.form.value.password,
      usuario: this.form.value.usuario,
      id_sucursal:  Number(this.form.value.id_sucursal),
      rol_name: "Administrador"
    }
    console.log(empleado)
    this._empleadoService.addNewEmpleado(empleado).subscribe(data => {
      console.log(data);
    });
    this.router.navigate(['/home/empleados']);
  }

  /**
  * Metodo que edita un empleado en el servicio y la actuliza en la tabla
  * */
  editarEmpleado(){
    const empleado: Object =
    {
      nombre1: this.form.value.nombre1,
      nombre2: this.form.value.nombre2,
      apellido1: this.form.value.apellido1,
      apellido2: this.form.value.apellido2,
      cedula: Number(this.form.value.cedula),
      fecha_de_nacimiento: "05/10/1974",
      fecha_ingreso: "06/10/2020",
      numero_telefono: Number(this.form.value.numero_telefono),
      edad: 0,
      pass: this.form.value.password,
      usuario: this.form.value.usuario,
      id_sucursal:  Number(this.form.value.id_sucursal),
      rol_name: "Administrador"
    }
    console.log(empleado)
    this._empleadoService.updateEmpleado(empleado).subscribe(data => {
      console.log(data);
    });
    this.router.navigate(['/home/empleados']);
  }

  /**
  * Metodo que obtiene los datos de un empleado editado y llama al servicio para hacer los cambios
  * */ 
  esEditar(){
    if(this.cedula != 0){
      this.titulo = "Editar Empleado";
      console.log(this._empleadoService.getClienteById(this.cedula));
       this._empleadoService.getClienteById(this.cedula).subscribe(
        result => {
          console.log(result);
          this.form.setValue({
            nombre1: result.nombre1,
            nombre2: result.nombre2,
            apellido1: result.apellido1,
            apellido2: result.apellido2,
            cedula: result.cedula,
            id_sucursal: result.id_sucursal.toString(),
            numero_telefono: result.numero_telefono,
            rol_name: result.rol_name,
            usuario: result.usuario,
            password: result.pass,
        })
        },
        error => {
          console.log("ERROR CON EL GET")
        });
    }else{
      this.titulo="hola"
      console.log("ES NULL") 
    }
  }

}


