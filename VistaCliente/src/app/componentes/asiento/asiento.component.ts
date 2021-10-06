import { Component, OnInit, SystemJsNgModuleLoader , OnChanges} from '@angular/core';

interface Item {
  estado:Estado;
}
type Estado= "ocupado" | "habilitado" | "restriccion" | "discapacidad";


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
  
  
  constructor() { 
    this.asiento_habilitado="https://1.bp.blogspot.com/-RcCvvl5yMH4/YV2x7cfR3WI/AAAAAAAAULQ/MfUbxBrShE4G1817HYk4XYwfpA_zAC4zwCLcBGAsYHQ/s24/asientoblanco%25281%2529.png";
    this.asiento_ocupado="https://1.bp.blogspot.com/-rM-mxMgBsZU/YVuYLsopKxI/AAAAAAAAUGw/T-qIOLgr9nQHKNAC41YwCw2YJcp4hLCiwCLcBGAsYHQ/s25/asiento1.png";
    this.asiento_restriccion="https://1.bp.blogspot.com/-Y_tVkvIoyos/YVuYLlP0RvI/AAAAAAAAUG0/9LOyAGnaPUkCe-riKszpITXib9Yy81Q5QCLcBGAsYHQ/s25/asiento2.png";
    this.asiento_discapacidad="https://1.bp.blogspot.com/-HN8mamBcqRI/YVuYL5NBV6I/AAAAAAAAUG4/jnv5aIQ4xYwsm5NDiCEDLTwtmKEzDpURACLcBGAsYHQ/s26/asiento4.png";
  }

  ngOnInit(): void {
    this.asientos=[
      {"estado":"ocupado"},
      {"estado":"ocupado"},
      {"estado":"ocupado"},
      {"estado":"habilitado"},
      {"estado":"restriccion"},
      {"estado":"restriccion"},
      {"estado":"discapacidad"},
      {"estado":"discapacidad"},
      {"estado":"habilitado"},
      {"estado":"habilitado"},
      {"estado":"habilitado"},
      {"estado":"habilitado"},
      {"estado":"restriccion"},
      {"estado":"restriccion"},
      {"estado":"habilitado"},
      {"estado":"habilitado"},
      {"estado":"habilitado"},
      {"estado":"habilitado"},
      {"estado":"restriccion"},
      {"estado":"restriccion"},
      {"estado":"habilitado"},
      {"estado":"habilitado"},
      {"estado":"habilitado"},
      {"estado":"habilitado"},
      {"estado":"habilitado"},
      {"estado":"habilitado"},
      {"estado":"habilitado"},
      {"estado":"habilitado"}
    ]

  }
  ngOnChanges():void{
    console.log("asap");
  }
  
  tipoDeAsiento(item:Item): string{
    if(item.estado=="ocupado"){
      return this.asiento_ocupado;
    } else if(item.estado=="restriccion"){
      return this.asiento_restriccion;
    } else if(item.estado=="discapacidad"){
      return this.asiento_discapacidad;
    } else{
      return this.asiento_habilitado;
    }
  }

}
