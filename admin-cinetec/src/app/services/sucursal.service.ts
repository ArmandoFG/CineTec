import { Injectable } from '@angular/core';
import { HttpHeaders, HttpClient } from '@angular/common/http';
import { Observable } from 'rxjs';

@Injectable({
  providedIn: 'root'
})
export class SucursalService {
  public url: string;

  constructor(public _http: HttpClient
    ){
      this.url = "http://localhost:8081/"
     }
     
  getSucursales(): Observable<any> {
    return this._http.get(this.url+'api/sucursal');
  }

  getSalasBySucursal(id_sucursal: string | null): Observable<any>{
      return this._http.get(this.url+'api/sala/suc/'+id_sucursal)
  }

  deleteSucursal(id_sucursal: string | null){
    this._http.delete(this.url+'api/sucursal/quitsuc/'+id_sucursal);
  }

  getSucursalById(id_sucursal: string | null): Observable<any>{
    return this._http.get(this.url+'api/sucursal/s/'+id_sucursal)
  }

}

