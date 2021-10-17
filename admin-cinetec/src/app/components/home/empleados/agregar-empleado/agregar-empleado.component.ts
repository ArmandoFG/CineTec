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
export class AgregarEmpleadoComponent implements OnInit {

  tipo: any[] = ['1', '2', '3', '4', '5' ]
  form: FormGroup;
  cedula: number | null;
  titulo = "Agregar Empleado";

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
  ngOnInit(): void {
    this.esEditar();
  }

  agregarEditarEmpleado(){
    if (this.cedula == 0){
      this.agregarEmpleado();
    }else{
      console.log(this.cedula)
      this.editarEmpleado();
    }
  }

  agregarEmpleado(){
    console.log("es agregar")
  }

  editarEmpleado(){
    console.log("es editar")
  }

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


