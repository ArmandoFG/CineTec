import { Component, OnInit } from '@angular/core';
import * as X2JS from 'x2js';

import { PeticionesService } from 'src/app/services/peticiones.service';
import { PeliculaService } from 'src/app/services/pelicula.service';
import { Router } from '@angular/router';



interface facturaData {
  usuario:string;
  nombreUsuario:string;
  cedula:string;
  numero:number;
  fecha:string;
  sucursal:string;
  numeroSala:string;
  descripcion:string;
  cantidadEntrada: number;
  total:number;
  impuesto:number;
  hora: string;
  clave:number;
  consecutivo:number;
  facturaid:number;
  peliculaNombre:string;
}
@Component({
  selector: 'xml',
  templateUrl: './xml.component.html',
  styleUrls: ['./xml.component.css']
})
export class XmlComponent implements OnInit {
  public factura:facturaData={
    usuario:'',
    nombreUsuario:'',
    cedula:'',
    numero:0,
    fecha:'',
    sucursal:'',
    numeroSala:'',
    descripcion:'',
    cantidadEntrada: 0,
    total:0,
    impuesto:0, 
    hora:'',
    consecutivo:0,
    clave:0,
    facturaid:0, 
    peliculaNombre:''
  }
  

  constructor(
    private _peliculaService: PeliculaService,
    private _clienteService: PeticionesService,
    private router:Router
  ) { }

  ngOnInit(): void {
    this.setFacturaData();
  }
  setFacturaData(){
    this.factura.nombreUsuario=this._clienteService.user.nombre;
    this.factura.usuario= this._clienteService.user.user;
    this.factura.cedula= this._clienteService.user.cedula;
    this.factura.numero= this._clienteService.user.numero;

    this.factura.numeroSala= this._peliculaService.pelicula.sala;
    this.factura.sucursal= this._peliculaService.pelicula.nombreCine;
    this.factura.hora= this._peliculaService.pelicula.hora;
    this.factura.peliculaNombre= this._peliculaService.pelicula.nombrePelicula;

    this.factura.fecha= this.getFechaHoy();
    var precioSinImpuesto= this.getTotalPrecio();
    this.factura.cantidadEntrada= this.getCantidadEntradas();
    this.factura.descripcion= this.getDescripcion();
    this.factura.impuesto= this.getImpuesto();
    this.factura.total= precioSinImpuesto+ this.factura.impuesto;

    this.factura.consecutivo= this.getConsecutivo();
    this.factura.clave= this.getClave();
    this.factura.facturaid= this.getFacturaId();

    this.generarXML();

  }
  generarXML(){
    var x2js = new X2JS();
    var new_xml=x2js.js2xml(this.generateJson()); //parsea a json 
    
    var filename = "file.xml";
    var pom = document.createElement('a');

    var bb = new Blob([new_xml], {type: 'text/xml69'});
    
    console.log("El tipo de esta newxml es: "+ typeof(new_xml));

    pom.setAttribute('href', window.URL.createObjectURL(bb));
    pom.setAttribute('download', filename);

    pom.dataset.downloadurl = ['text/plain', pom.download, pom.href].join(':');
    pom.draggable = true; 
    pom.classList.add('dragout');

    pom.click();
  }
  generateJson(){
    var myJson= {
      "FacturaElectronica":{
        "Factura":{
          "Consecutivo":this.factura.consecutivo,
          "Clave":this.factura.clave,
          "NumFactura":this.factura.facturaid,
        },
        "usuario":{
          "nombre": this.factura.nombreUsuario,
          "usuario": this.factura.usuario,
          "cedula": this.factura.cedula,
          "telefono":{
            "extension": 506,
            "numero": this.factura.numero
          }
        },
        "cine":{
          "NombreCine":  this.factura.sucursal,
          "NumeroSala": this.factura.numeroSala,
          "Pelicula":{
            "Nombre": this.factura.peliculaNombre,
            "Hora": this.factura.hora
          }
        },
        "Compra":{
          "CantidadEntradas": this.factura.cantidadEntrada,
          "FechaPago":this.factura.cantidadEntrada,
          "PrecioTotal":this.factura.total,
          "Impuesto":this.factura.impuesto,
          "Descuento":0
        },
        "Empresa":{
          "Nombre": "CineTec",
          "Dominio":"Tecnologico de Costa Rica"
        }
      }
    }
    console.log(myJson);
    return myJson;
  }
  getFacturaId():number{
    return Math.floor(Math.random() * 600);
  }
  getClave(){
    return parseInt(Math.random().toString(10).slice(2).substr(2,7));
  }
  getConsecutivo(){
    return parseInt(Math.random().toString(10).slice(2).substr(2,7));
  }
  getFechaHoy():string{
    const tiempoTranscurrido = Date.now();
    const hoy = new Date(tiempoTranscurrido);
    return hoy.toLocaleDateString();
  }
  getTotalPrecio(){
    var ninos= this._peliculaService.pelicula.cantidadNino;
    var adultos= this._peliculaService.pelicula.cantidadAdulto;
    var mayores= this._peliculaService.pelicula.cantidadMayor;

    var precioNino= parseInt( this._peliculaService.pelicula.precioNino);
    var precioAdulto= parseInt(this._peliculaService.pelicula.precioAdulto);
    var precioMayor= parseInt(this._peliculaService.pelicula.precioMayor);
    var total= ninos*precioNino+adultos*precioAdulto+mayores*precioMayor;
    console.log("Todos los datos\n"+ ninos+" "+adultos+" "+mayores+ "\n"+ 
    precioNino +" "+ precioAdulto+ " "+ precioMayor);
    console.log("el total es: "+ total);
    return total;
  }
  getCantidadEntradas(){
    var ninos= this._peliculaService.pelicula.cantidadNino;
    var adultos= this._peliculaService.pelicula.cantidadAdulto;
    var mayores= this._peliculaService.pelicula.cantidadMayor;

    return ninos+adultos+mayores;
  }
  getDescripcion(){
    var texto= "Compra de " + this.factura.cantidadEntrada.toString()+ " entradas \npara ver la pelicula\n" +
     this.factura.peliculaNombre;
     return texto;
  }
  getImpuesto(){
    
    var impuesto= this.getTotalPrecio()*0.13;
    return impuesto;
  }

}
