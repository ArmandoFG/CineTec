import { Component, OnInit, OnDestroy } from '@angular/core';
import { PeticionesService } from 'src/app/services/peticiones.service';

@Component({
  selector: 'app-popup',
  templateUrl: './popup.component.html',
  styleUrls: ['./popup.component.css']
})
/** Desplega un popup para mostrar los datos del usuario */
export class PopupComponent implements OnInit {
  public user={
    nombre: '',
    cedula:'',
    cumple:'',
    numero:0,
    password:'',
    user:''
  };
  /**
   * 
   * @param _clienteService Carga los datos del usuario de la base
   */
  constructor(
    private _clienteService: PeticionesService,
  ) { }
    /** Setea los atributos del popup cuando se inicializa el popup */
  ngOnInit(): void {
    this.user.nombre=this._clienteService.user.nombre;
    this.user.cedula=this._clienteService.user.cedula;
    this.user.cumple=this._clienteService.user.cumple;
    this.user.numero=this._clienteService.user.numero;
    this.user.password=this._clienteService.user.password;
    this.user.user=this._clienteService.user.user;
  }
  /** Para cerrar la ventana */
  closeWithoutSave(){
    console.log("CERRANDO");
  }
}
