import { Component, OnInit } from '@angular/core';
import { MatDialog } from '@angular/material/dialog';
import { PeticionesService } from 'src/app/services/peticiones.service';
import { PopupComponent } from '../popup/popup.component';

@Component({
  selector: 'menubar',
  templateUrl: './menubar.component.html',
  styleUrls: ['./menubar.component.css']
})
export class MenubarComponent implements OnInit {
  nombreUsuario: string;
  public user:any;
  constructor(
    private _clienteService: PeticionesService,
    private _dialog: MatDialog
  ) { 
    this.nombreUsuario="False";
  }

  ngOnInit(): void {
    this.getUserInfo();
  }
  getUserInfo(){
    this.nombreUsuario=this._clienteService.user.nombre;
  }
  openDialog(){
    this._dialog.open(PopupComponent);
  }

}
