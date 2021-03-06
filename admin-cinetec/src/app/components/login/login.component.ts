import { Component, OnInit } from '@angular/core';
import { FormBuilder, FormGroup, Validators } from '@angular/forms';
import { MatSnackBar } from '@angular/material/snack-bar';
import { Router } from '@angular/router';
import { EmpleadoService } from 'src/app/services/empleado.service';

@Component({
  selector: 'app-login',
  templateUrl: './login.component.html',
  styleUrls: ['./login.component.css']
})
export class LoginComponent implements OnInit {
  hide = true;
  form: FormGroup;
  loading = false;



  constructor(private fb: FormBuilder, private _snackBar: MatSnackBar, private router: Router, 
    private _empleadoLoginService: EmpleadoService) {
    this.form = this.fb.group({
      usuario: ['', Validators.required],
      password: ['', Validators.required]
    })
   }

  ngOnInit(): void {
  }


  ingresar(){
    const usuario = this.form.value.usuario;
    const password = this.form.value.password;
    this._empleadoLoginService.getEmpleadoByUser(usuario, password).subscribe(
      result => {
        console.log(result);
        if(result == true){
          this.load();
        }else{
          this.error();
          this.form.reset();
        }
      },
      error => {
        this.error();
        this.form.reset();
      });
  }

  error(){
    this._snackBar.open("Usuario o contraseña ingresados son incorrectos", 
    '', {
      duration: 5000,
      horizontalPosition: 'center',
      verticalPosition: 'bottom'
    })
  }

  load(){
    this.loading = true;
    setTimeout(() => {
      this.router.navigate(['home/inicio'])
    }, 1500);

  }
}
