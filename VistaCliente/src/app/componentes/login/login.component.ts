import { Component, OnInit, ViewChild,  Output, EventEmitter } from '@angular/core';
import { Router } from '@angular/router';
import { PeticionesService } from 'src/app/services/peticiones.service';


@Component({
  selector: 'login',
  templateUrl: './login.component.html',
  styleUrls: ['./login.component.css'],
  
})
/**
 * Clase que contiene el formulario de ingreso para el usuario
 */
export class LoginComponent implements OnInit {
  public user:any;
  /**
   * Inicializa el componente
   * @param _clienteService contiene la informacion referente al usuario
   * @param router para el sistema de rutas una vez validada la data de entrada
   */
  constructor(
    private _clienteService: PeticionesService,
    private router:Router
  ) { }

  ngOnInit(): void {

  }
  /**
   * Valida que el usuario se encuentra en la base de datos
   */
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
  /** Valida la contrasenna ingresada por el usuario */
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
