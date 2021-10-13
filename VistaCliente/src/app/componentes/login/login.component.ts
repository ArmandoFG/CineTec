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
        this.router.navigate(['Cartelera']);
        
      },
      error => {
        console.log("hubo algun error \n" + <any>error);
        alert("Error al ingresar el usuario \n Intentelo de nuevo");
      }
    );
  }
  

}
