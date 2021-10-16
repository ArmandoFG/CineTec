import { Component, OnInit , OnChanges} from '@angular/core';
import { PeliculaService } from 'src/app/services/pelicula.service';
import { Router } from '@angular/router';


interface Item {
  disponibilidad:Disponibilidad;
  asientoid: string;
}
type Disponibilidad= "Ocupado" | "Disponible" | "Restringido" | "Discapacidad" | "Seleccionado";



@Component({
  selector: 'asiento',
  templateUrl: './asiento.component.html',
  styleUrls: ['./asiento.component.css']
})


export class AsientoComponent implements OnInit {
  public asiento_habilitado:string;
  public asiento_ocupado:string;
  public asiento_restriccion:string;
  public asiento_discapacidad:string;
  asientos:any[]=[];
  public salaId:any;
  public asientosSeleccionados:any[]=[];
  
  
  
  
  constructor(
    private _peliculaService: PeliculaService,
    private router:Router
  ) { 
    this.asiento_habilitado="https://1.bp.blogspot.com/-RcCvvl5yMH4/YV2x7cfR3WI/AAAAAAAAULQ/MfUbxBrShE4G1817HYk4XYwfpA_zAC4zwCLcBGAsYHQ/s24/asientoblanco%25281%2529.png";
    this.asiento_ocupado="https://1.bp.blogspot.com/-rM-mxMgBsZU/YVuYLsopKxI/AAAAAAAAUGw/T-qIOLgr9nQHKNAC41YwCw2YJcp4hLCiwCLcBGAsYHQ/s25/asiento1.png";
    this.asiento_restriccion="https://1.bp.blogspot.com/-Y_tVkvIoyos/YVuYLlP0RvI/AAAAAAAAUG0/9LOyAGnaPUkCe-riKszpITXib9Yy81Q5QCLcBGAsYHQ/s25/asiento2.png";
    this.asiento_discapacidad="https://1.bp.blogspot.com/-HN8mamBcqRI/YVuYL5NBV6I/AAAAAAAAUG4/jnv5aIQ4xYwsm5NDiCEDLTwtmKEzDpURACLcBGAsYHQ/s26/asiento4.png";
  }

  ngOnInit(): void {
    this.asientos=[];
    this.getSala();

  }
  ngOnChanges():void{
    console.log("asap");
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
    this.router.navigate(['Pago']);
    this.cambiarAsientos(); 
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

}
