import { Component, OnInit } from '@angular/core';

import jsPDF from 'jspdf';
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
  selector: 'factura',
  templateUrl: './factura.component.html',
  styleUrls: ['./factura.component.css']
})
export class FacturaComponent implements OnInit {
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

    this.generarFacturaPDF();
  }
  generarFacturaPDF(){
    var doc = new jsPDF();
    doc.addImage("https://1.bp.blogspot.com/-le75ftEBpYc/YVQQTYvaNRI/AAAAAAAATuo/AqUnZ_NDl1Ejoz4QvuuWovXnRd3c7_7nwCLcBGAsYHQ/s496/LOGO.PNG", 'PNG', 20,10, 30, 12, 'logo');
    doc.setFont('times');
    doc.setFontSize(22);

    //Elementos graficos
    
    doc.rect(20, 105, 30, 10);
    doc.rect(60, 105, 30, 10);
    doc.rect(100, 105, 30, 10);
    doc.rect(140, 105, 43, 10);
    doc.rect(20, 120, 30, 30);
    doc.rect(60, 120, 30, 30);
    doc.rect(100, 120, 30, 30);
    doc.rect(140, 120, 43, 30);
    doc.line(20, 50, 183, 50);
    doc.line(20, 95, 183, 95);

    doc.text("Factura", 100, 20,{align:'center'});
    doc.setFontSize(10);
    doc.setFont('times','bold');
    doc.text("Factura Electronica: \n"+ this.factura.peliculaNombre, 100, 26,{align:'center'});
      doc.setFontSize(12);
      doc.setFont('times','normal');
    //Datos de la factura
    doc.text('Numero de factura' ,20, 38);
    doc.text(this.factura.facturaid.toString(),25, 45);
    doc.text('Consecutivo',90, 38);
    doc.text(this.factura.consecutivo.toString(),93, 45);
    doc.text('Clave',155, 38);
    doc.text(this.factura.clave.toString(),158, 45);

    //Datos del usuario
    doc.text('Nombre:'+ this.factura.nombreUsuario,30, 60);
    doc.text('Usuario: '+ this.factura.usuario,30, 70);
    doc.text('Cedula: '+ this.factura.cedula,30, 80);
    doc.text('Numero: '+ this.factura.numero,30, 90);
    

    //Datos de la compra
    doc.text('Fecha: '+ this.factura.fecha,130, 60);
    doc.text('Sucursal: '+ this.factura.sucursal,130, 70);
    doc.text('Numero de Sala: '+ this.factura.numeroSala,130, 80);
    doc.text('Hora: '+ this.factura.hora,130, 90);
    
    //tabla con cuentas
    doc.text('Descripción',144, 112);
    doc.text('Cant. entradas',22, 112);
    doc.text('Total',63, 112);
    doc.text('Impuesto',102, 112);
    doc.text(this.factura.descripcion,144, 125);
    doc.text(this.factura.cantidadEntrada.toString(),22, 125);
    doc.text(this.factura.total.toString(),63, 125);
    doc.text(this.factura.impuesto.toString(),102, 125);

    doc.save('Factura.pdf');
    this.generarXML();

    this.router.navigate(['Pago']);
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
      "FacturaElectrocica":{
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
