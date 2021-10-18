import { Component, OnInit } from '@angular/core';
import { MatDialog } from '@angular/material/dialog';
import { PeticionesService } from 'src/app/services/peticiones.service';
import { PopupComponent } from '../popup/popup.component';

@Component({
  selector: 'menubar',
  templateUrl: './menubar.component.html',
  styleUrls: ['./menubar.component.css']
})
/** Contiene la barra de navegacion del sistema de vista */
export class MenubarComponent implements OnInit {
  nombreUsuario: string; /** Se presenta dentro de la interfaz con la bienvenida */
  public user:any; /** Guarda la data del usuario */
  /**
   * Inicializa la barra de navegacion
   * @param _clienteService contiene los datos del usuario que esta usando el sistema
   * @param _dialog es parra poder hacer un popup con los datos del usuario
   */
  constructor(
    private _clienteService: PeticionesService,
    private _dialog: MatDialog
  ) { 
    this.nombreUsuario="False";
  }
  /** Se llama cuando se inicia el componente */
  ngOnInit(): void {
    this.getUserInfo();
  }
  /** Obtiene la informacion del usuario de la base */
  getUserInfo(){
    this.nombreUsuario=this._clienteService.user.nombre;
  }
  /** Abre el popup para presentar los datos del usuario */
  openDialog(){
    this._dialog.open(PopupComponent);
  }

}
