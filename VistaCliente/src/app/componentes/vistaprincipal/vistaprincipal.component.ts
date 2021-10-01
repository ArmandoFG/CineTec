import { Component, OnInit } from '@angular/core';

@Component({
  selector: 'vistaprincipal',
  templateUrl: './vistaprincipal.component.html',
  styleUrls: ['./vistaprincipal.component.css']
})
export class VistaprincipalComponent implements OnInit {
  tarjetas: any[] = [];
  constructor() { }

  ngOnInit(): void {
    this.tarjetas= 
      [
        {
            "numero": 119926384,
            "saldo": 300000,
            "tipo": "Debito",
            "fechaexp": "12/7/2026"
        },
        {
          "numero": 125777230,
          "saldo": 1250000,
          "tipo": "Credito",
          "fechaexp": "15/3/2025"
      }
      ]
  }

}
