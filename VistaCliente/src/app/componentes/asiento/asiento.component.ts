import { Component, OnInit , OnChanges} from '@angular/core';
import { PeliculaService } from 'src/app/services/pelicula.service';


interface Item {
  disponibilidad:Disponibilidad;
  asientoid: string;
}
type Disponibilidad= "Ocupado" | "Disponible" | "Restringido" | "Discapacidad";



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
  
  
  constructor(
    private _peliculaService: PeliculaService,
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
    if(item.disponibilidad=="Ocupado"){
      return this.asiento_ocupado;
    } else if(item.disponibilidad=="Restringido"){
      return this.asiento_restriccion;
    } else if(item.disponibilidad=="Discapacidad"){
      return this.asiento_discapacidad;
    }else if(item.asientoid== "A6"|| item.asientoid== "A7" ){
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
        console.log("El resultado es "+result);
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
        console.log("El resultado de asientos es "+result);
        var counter=0;
        while(result[counter]!=undefined){
          this.asientos.push({salaid:result[counter].salaid, asientoid: result[counter].asientoid, 
          disponibilidad:result[counter].disponibilidad});
          counter++;
        }
      },
      error => {
        console.log("hubo algun error obteniendo Salas \n" + <any>error);
        alert("Error obteniendo los asientos \n Vuelva a ingresar al sistema");
      }
    );
  }

  /**
   * Se activa al clickear un asiento y envía un post al api para cambiar el estado de un asiento
   * @param item es el asiento sobre el que se hace el click
   */
  clickea(item:Item){
    let estadoAsiento:string;
    if(item.disponibilidad=="Disponible"){
      estadoAsiento= "Ocupado";
    }else{
      estadoAsiento= "Disponible";
    }
    let objeto= {"salaid":this._peliculaService.pelicula.sala,"asientoid":item.asientoid,
    "disponibilidad":estadoAsiento};
    console.log("el formato del json es: "+ objeto.salaid+" "+ objeto.asientoid+ " "+ objeto.disponibilidad);
    this._peliculaService.cambiarEstadoAsiento(objeto).subscribe(
      response => {
        console.log(response);
      },
      error =>{
        console.log(error);
      }
    );
    this.getAsientos();
    console.log("clickea el asiento "+ item.asientoid);
  }

}
