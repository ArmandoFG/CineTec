import { Injectable } from '@angular/core';
import { HttpHeaders, HttpClient } from '@angular/common/http';
import { Observable } from 'rxjs';

@Injectable({
  providedIn: 'root'
})
export class EmpleadoService {
  public url: string;

  constructor(public _http: HttpClient
    ){
      this.url = "http://localhost:8081/"
     }
     

  getEmpleados(): Observable<any> {
    return this._http.get(this.url+'api/empleado');
  }

  getEmpleadoByUser(usuario: string, pass: string): Observable<any>{
    return this._http.get(this.url+'api/empleado/val/'+usuario+'/'+pass)
  }

  getClienteById(cedula: number | null): Observable<any>{
    return this._http.get(this.url+'api/empleado/e/'+cedula)
  }

  deleteEmpleado(cedula: string | null){
    console.log(this.url+'api/empleado/delete/'+cedula);
      this._http.delete(this.url+'api/empleado/delete/'+cedula).subscribe(data => {
      console.log(data);
    });
  }

  addNewEmpleado(dataEmpleado: Object): Observable<any>{
    return this._http.post(this.url+'api/empleado/addempleado', dataEmpleado);
  }

  updateEmpleado(dataEmpleado: Object): Observable<any>{
    return this._http.put(this.url+'api/empleado/modemp', dataEmpleado);
  }

}
