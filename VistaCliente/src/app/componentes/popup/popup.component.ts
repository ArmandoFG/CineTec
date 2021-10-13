import { Component, OnInit, OnDestroy } from '@angular/core';
import { PeticionesService } from 'src/app/services/peticiones.service';

@Component({
  selector: 'app-popup',
  templateUrl: './popup.component.html',
  styleUrls: ['./popup.component.css']
})
export class PopupComponent implements OnInit {
  public user={
    nombre: '',
    cedula:'',
    cumple:'',
    numero:0,
    password:'',
    user:''
  };
  constructor(
    private _clienteService: PeticionesService,
  ) { }

  ngOnInit(): void {
    this.user.nombre=this._clienteService.user.nombre;
    this.user.cedula=this._clienteService.user.cedula;
    this.user.cumple=this._clienteService.user.cumple;
    this.user.numero=this._clienteService.user.numero;
    this.user.password=this._clienteService.user.password;
    this.user.user=this._clienteService.user.user;
  }
  closeWithoutSave(){
    console.log("CERRANDO ALAVERGA");
  }
  

}
