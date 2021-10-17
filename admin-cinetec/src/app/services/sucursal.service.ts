import { Injectable } from '@angular/core';
import { HttpHeaders, HttpClient } from '@angular/common/http';
import { Observable } from 'rxjs';

@Injectable({
  providedIn: 'root'
})
export class SucursalService {
  public url: string;
  flagAsientos = 0;

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
    console.log(this.url+'api/sucursal/quitsuc/'+id_sucursal);
      this._http.delete(this.url+'api/sucursal/quitsuc/'+id_sucursal).subscribe(data => {
      console.log(data);
    });
  }

  getSucursalById(id_sucursal: string | null): Observable<any>{
    return this._http.get(this.url+'api/sucursal/s/'+id_sucursal)
  }

  addNewSucursal(dataSucursal: Object): Observable<any>{
    return this._http.post(this.url+'api/sucursal/addsuc', dataSucursal);
  }

  updateSucursal(dataSucursal: Object): Observable<any>{
    return this._http.put(this.url+'api/sucursal/modsuc', dataSucursal);
  }

  covidRestriccion(): Observable<any>{
    if(this.flagAsientos == 0){
      return this._http.get(this.url+'api/asiento/habilitado');
    }else{
      this.flagAsientos = 1;
      return this._http.get(this.url+'api/asiento/restriccion');
    }
    
  }

}

