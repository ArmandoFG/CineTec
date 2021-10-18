import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { Observable } from 'rxjs';

/** Provee el contenido a guardar para un usuario */
interface User {
  nombre:string;
  cedula:string;
  cumple:string;
  numero:number;
  password:string;
  user:string;
}

/** Injectable para poder usarlo en otros componentes */
@Injectable({
  providedIn: 'root'
})
/** Servicio para obtener informacion del cliente de la base de datos y guardarla */
export class PeticionesService {
  public url:string; /** guarda el url para hacer peticiones al api */
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
  /**
   * 
   * @param _http objeto para hacer peticiones http
   */
    constructor(
        public _http: HttpClient
    ){
        this.url='http://localhost:8081/';
    }

    /**
     * Retorna un usuario de acuerdo al numero de cedula
     * @param id numero de cedula
     * @returns observable con la informacion del usuario
     */
    getUserbyId(id:string): Observable<any>{
        this.infoUser= this._http.get(this.url+'api/cliente/usuario/'+id);
        return this._http.get(this.url+'api/cliente/usuario/'+id);
    }
    /** Setea la informacion del usuario para guardarlo en el servicio */
    setCurrentlyUser(){
      this.user.nombre=this.infoUser.nombre;
      this.user.cedula=this.infoUser.cedula;
      this.user.cumple=this.infoUser.fecha_nacimiento;
      this.user.numero=this.infoUser.numero_telefono;
      this.user.password=this.infoUser.pass;
      this.user.user=this.infoUser.usuario;
    }
    /**
     * 
     * @returns el nombre del usuario con la sesion activa
     */
    getCurrentlyUser(){
        return this.user.nombre;
    }
    /**
     * 
     * @param pas la contrasenna ingresada por el usuario
     * @returns true o false si la contrasenna es correcta o no
     */
    getValidacionPas(pas:string):Observable<any>{
      console.log(this.user.user);
      return this._http.get(this.url+'api/cliente/val/'+this.user.user+'/'+pas);
    }
    

}
