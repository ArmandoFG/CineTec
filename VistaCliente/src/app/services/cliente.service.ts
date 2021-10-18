import { Injectable } from "@angular/core";
import { HttpClient, HttpHeaders } from "@angular/common/http";
import { Observable, Subject } from "rxjs";


const CACHE_SIZE = 1;

@Injectable({
    providedIn:'root'
})
export class ClienteService{
    public url:string;
    public infoUser:any;
    

    constructor(
        public _http: HttpClient
    ){
        this.url='http://localhost:8081/';
    }
    getUserbyId(id:string): Observable<any>{
        this.infoUser=this._http.get(this.url+'api/cliente/client/'+id);
        return this.infoUser;
    }
    getCurrentlyUser():Observable<Object>{
        return this.infoUser;
    }
}