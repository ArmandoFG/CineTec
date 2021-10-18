import { Component, OnInit } from '@angular/core';
import { PeliculaService } from 'src/app/services/pelicula.service';
import { PeticionesService } from 'src/app/services/peticiones.service';
import { Router } from '@angular/router';

interface userData{
  nombre:string;
  cedula:string;
  usuario:string;
  pelicula:string;
  salaid:string;
  sucursal:string;
  asientoid:string[];
  numero:number;
}
@Component({
  selector: 'pago',
  templateUrl: './pago.component.html',
  styleUrls: ['./pago.component.css']
})
export class PagoComponent implements OnInit {
  public user:userData={
    nombre:'',
    cedula:'',
    usuario:'',
    pelicula:'',
    salaid:'',
    sucursal:'',
    asientoid:[],
    numero:0,
  }
  constructor(
    private _peliculaService: PeliculaService,
    private _clienteService: PeticionesService,
    private router:Router
  ) { }

  ngOnInit(): void {
    this.setDataUser();
    this.asientosUser();
  }
  setDataUser(){
    this.user.nombre= this._clienteService.user.nombre;
    this.user.cedula= this._clienteService.user.cedula;
    this.user.numero= this._clienteService.user.numero;
    this.user.usuario= this._clienteService.user.user;

    this.user.pelicula= this._peliculaService.pelicula.nombrePelicula;
    this.user.salaid= this._peliculaService.pelicula.sala;
    this.user.sucursal= this._peliculaService.pelicula.nombreCine;
    this.user.asientoid= this._peliculaService.getAsientosSeleccionados();
    
  }
  asientosUser(){
    console.log("los asientos son: ");
    for(var i=0; i<this.user.asientoid.length; i++){
      console.log(this.user.asientoid[i]);
    }
  }
  abrirFactura(){
    this.router.navigate(['Factura']);
  }
  abrirxml(){
    this.router.navigate(['XML']);
  }

}
