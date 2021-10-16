import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { Observable } from 'rxjs';

interface User {
  nombre:string;
  cedula:string;
  cumple:string;
  numero:number;
  password:string;
  user:string;
}

@Injectable({
  providedIn: 'root'
})
export class PeticionesService {
  public url:string;
  public infoUser:any;
  public user: User={
    nombre: '',
    cedula:'',
    cumple:'',
    numero:0,
    password:'',
    user:''
  };
  public nombrePelicula:string='setear';
  public nombreCine:string='setear';

    constructor(
        public _http: HttpClient
    ){
        this.url='http://localhost:8081/';
    }
    getUserbyId(id:string): Observable<any>{
        this.infoUser= this._http.get(this.url+'api/cliente/client/'+id);
        return this._http.get(this.url+'api/cliente/client/'+id);
    }
    setCurrentlyUser(){
      this.user.nombre=this.infoUser.nombre;
      this.user.cedula=this.infoUser.cedula;
      this.user.cumple=this.infoUser.fecha_nacimiento;
      this.user.numero=this.infoUser.numero_telefono;
      this.user.password=this.infoUser.pass;
      this.user.user=this.infoUser.usuario;
    }
    getCurrentlyUser(){
        return this.user.nombre;
    }
    

}
