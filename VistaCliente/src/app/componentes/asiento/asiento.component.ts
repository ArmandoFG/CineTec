import { Component, OnInit , OnChanges} from '@angular/core';
import { PeliculaService } from 'src/app/services/pelicula.service';
import { Router } from '@angular/router';

/**
 * Interfaz que guarda el contenido de un item de asiento proveniente de la base de datos
 * Guarda atributos disponibilidad y el asiento id
 */
interface Item {
  disponibilidad:Disponibilidad;
  asientoid: string;
}
/**Objeto que tiene todos los posibles estados de la disponibilidad de un asiento */
type Disponibilidad= "Ocupado" | "Disponible" | "Restringido" | "Discapacidad" | "Seleccionado";



@Component({
  selector: 'asiento',
  templateUrl: './asiento.component.html',
  styleUrls: ['./asiento.component.css']
})

/**
 * @class Clase que contiene la pagina que carga los asientos de la vista
 */
export class AsientoComponent implements OnInit {
  public asiento_habilitado:string; /**Contiene el src de la imagen de un asiento hablitado */
  public asiento_ocupado:string; /** Contiene el src de la imagen de un asiento ocupado*/
  public asiento_restriccion:string; /** Contiene el src de la imagen de un asiento restriccion*/
  public asiento_discapacidad:string; /** Contiene el src de la imagen de un asiento con discapacidad*/
  asientos:any[]=[]; /** Guarda los asientos que se obtienen de la base*/
  public asientosSeleccionados:any[]=[]; /** Contiene los asientos que se seleccionan por el usuario*/
  /**
   * Constructor de la clase
   * @param _peliculaService es el servicio que obtiene los datos de la base y los guarda o retorna
   * @param router es para el sistema de routing entre vistas
   */
  constructor(
    private _peliculaService: PeliculaService,
    private router:Router
  ) { 
    this.asiento_habilitado="https://1.bp.blogspot.com/-RcCvvl5yMH4/YV2x7cfR3WI/AAAAAAAAULQ/MfUbxBrShE4G1817HYk4XYwfpA_zAC4zwCLcBGAsYHQ/s24/asientoblanco%25281%2529.png";
    this.asiento_ocupado="https://1.bp.blogspot.com/-rM-mxMgBsZU/YVuYLsopKxI/AAAAAAAAUGw/T-qIOLgr9nQHKNAC41YwCw2YJcp4hLCiwCLcBGAsYHQ/s25/asiento1.png";
    this.asiento_restriccion="https://1.bp.blogspot.com/-Y_tVkvIoyos/YVuYLlP0RvI/AAAAAAAAUG0/9LOyAGnaPUkCe-riKszpITXib9Yy81Q5QCLcBGAsYHQ/s25/asiento2.png";
    this.asiento_discapacidad="https://1.bp.blogspot.com/-HN8mamBcqRI/YVuYL5NBV6I/AAAAAAAAUG4/jnv5aIQ4xYwsm5NDiCEDLTwtmKEzDpURACLcBGAsYHQ/s26/asiento4.png";
  }
  /**
   * Se inicia cuando empieza a correr la vista
   * Inicializa la lista de asientos
   */
  ngOnInit(): void {
    this.asientos=[];
    this.getSala();

  }
  
  tipoDeAsiento(item:Item): string{
    if(item.disponibilidad=="Seleccionado"){
      return this.asiento_ocupado;
    } else if(item.disponibilidad== "Ocupado"){
      return this.asiento_restriccion;
    }
    else if(item.disponibilidad=="Restringido"){
      return this.asiento_restriccion;
    } else if(item.disponibilidad=="Discapacidad"){
      return this.asiento_discapacidad;
    }else if(item.asientoid== "A3"|| item.asientoid== "A4" ){
      return this.asiento_discapacidad;
    } 
    else{
      return this.asiento_habilitado;
    }
  }
  getSala(){
    this._peliculaService.getSala().subscribe(
      result => {
        let algo='';
        result;
        algo=result;
        this._peliculaService.setSala(algo);
        this.getAsientos();
      },
      error => {
        console.log("hubo algun error obteniendo las Salas \n" + <any>error);
        alert("Error obteniendo las salas \n Vuelva a ingresar al sistema");
      }
    ); 
  }

  getAsientos(){
    this.asientos=[];
    this._peliculaService.getAsientos().subscribe(
      result => {
        result;
        var counter=0;
        while(result[counter]!=undefined){
          this.asientos.push({salaid:result[counter].salaid, asientoid: result[counter].asientoid, 
          disponibilidad:result[counter].disponibilidad});
          counter++;
        }
        this.sortAsientos();
        this.restriccionCovid();
      },
      error => {
        console.log("hubo algun error obteniendo Salas \n" + <any>error);
        alert("Error obteniendo los asientos \n Vuelva a ingresar al sistema");
      }
      
    );
    
  }
  sortAsientos(){
    console.log("el lenght de asientos es: "+ this.asientos.length);
    this.asientos.sort(function (a, b) {
      if (a.asientoid > b.asientoid) {
        return 1;
      }
      if (a.asientoid < b.asientoid) {
        return -1;
      }
      // a must be equal to b
      return 0;
    });
  }

  /**
   * Se activa al clickear un asiento y envía un post al api para cambiar el estado de un asiento
   * @param item es el asiento sobre el que se hace el click
   */

  clickea(item:Item){
    let estadoAsiento="";
    if(item.disponibilidad=="Disponible"){
      estadoAsiento= "Seleccionado";
      this.asientosSeleccionados.push( {"salaid":this._peliculaService.pelicula.sala,"asientoid":item.asientoid,
      "disponibilidad":"Seleccionado"});
      console.log("Hago un push");
    }else if(item.disponibilidad=="Seleccionado"){
      /** Si quiero des seleccionar el asiento */
      estadoAsiento= "Disponible";
      let counteraux=0;
      //Busca en asientos seleccionados la posicion donde esta 
      for( var i = 0; i < this.asientosSeleccionados.length; i++){                          
        if ( item.asientoid==this.asientosSeleccionados[i].asientoid) { 
          this.asientosSeleccionados.splice(i, 1); 
            i--; 
            break;
        }
      }
    }
    let counter=0;
    if(estadoAsiento!=""){
      while(counter<this.asientos.length){
        if(item.asientoid==this.asientos[counter].asientoid){
          this.asientos[counter].disponibilidad=estadoAsiento;
          break;
        }
        counter++;
      }
    }
    
    console.log("clickea el asiento "+ item.asientoid);
    //console.log("Los asientos son: "+this.asientosSeleccionados);
  }

  goBack(){
    this.router.navigate(['Proyecciones']);
  }
  goOn(){
    if(this.asientosSeleccionados.length==this._peliculaService.getCantidadTotal()){
      this.router.navigate(['Pago']);
    this.cambiarAsientos(); 
    }else{
      alert("Asegúrese de que la cantidad de asientos elegidos sea igual a la cantidad de asientos seleccionados"+
      "\nVuelva a elegir correctamente los asientos");
    }
    
  }
  cambiarAsientos(){
    while(this.asientosSeleccionados.length!=0){
      this.asientosSeleccionados[0].disponibilidad="Ocupado";
      this._peliculaService.cambiarEstadoAsiento(this.asientosSeleccionados[0]).subscribe(
        response => {
          console.log(response);
        },
        error =>{
          console.log(error);
        }
      );
      this._peliculaService.agregarAsiento(this.asientosSeleccionados[0].asientoid);
      this.asientosSeleccionados.shift();
    }
    this.getAsientos();
  }

  restriccionCovid(){
    console.log("En restriccion por covis el lenght de asientos es "+ this.asientos.length);
    console.log(this.asientos[0].disponibilidad);
    var valores= [2,3,6,7,10,11,12,13,16,17,20,21,26,27,30,31,34,35,36,37,40,41,44,45,50,51,54,55,58,59,60,
    61,64,65,68,69];
    for(let i of valores){
      this.asientos[i].disponibilidad="Restringido";
    }
  }

}
