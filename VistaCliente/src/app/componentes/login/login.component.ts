import { Component, OnInit, ViewChild,  Output, EventEmitter } from '@angular/core';
import { Router } from '@angular/router';
import { PeticionesService } from 'src/app/services/peticiones.service';


@Component({
  selector: 'login',
  templateUrl: './login.component.html',
  styleUrls: ['./login.component.css'],
  
})
export class LoginComponent implements OnInit {
  public user:any;

  constructor(
    private _clienteService: PeticionesService,
    private router:Router
  ) { }

  ngOnInit(): void {

  }
  getUser(){
    var texto=(<HTMLInputElement>document.getElementById('username')).value;
    console.log('username es: '+texto);
    this._clienteService.getUserbyId(texto).subscribe(
      result => {
        this.user= result;
        this._clienteService.infoUser=result;
        this._clienteService.setCurrentlyUser();
        this.validarContra();
        
      },
      error => {
        console.log("hubo algun error \n" + <any>error);
        alert("Error al ingresar el usuario \n Intentelo de nuevo");
      }
    );
  }
  validarContra(){
    var textoPas=(<HTMLInputElement>document.getElementById('password')).value;
    console.log('password es: '+textoPas);
    this._clienteService.getValidacionPas(textoPas).subscribe(
      result => {
        console.log(result);
        if(result==true){
          this.router.navigate(['Cartelera']);
        }else{
          alert("Error al ingresar su contraseña \n Intentelo de nuevo");
        }
        
      },
      error => {
        console.log("hubo algun error \n" + <any>error);
        alert("Error al ingresar el usuario \n Intentelo de nuevo");
      }
    );
  }
  

}
