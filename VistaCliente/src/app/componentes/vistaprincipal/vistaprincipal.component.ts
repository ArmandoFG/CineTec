import { Component, OnInit } from '@angular/core';

@Component({
  selector: 'vistaprincipal',
  templateUrl: './vistaprincipal.component.html',
  styleUrls: ['./vistaprincipal.component.css']
})
export class VistaprincipalComponent implements OnInit {
  peliculas: any[] = [];
  options = [
    { name: "Cartago", value: 1 },
    { name: "San José", value: 2 },
    { name: "Heredia", value: 3 },
    { name: "Alajuela", value: 4 },
    { name: "Guanacaste", value: 5 }
  ]
  public selectedOption: any;

  constructor() { }

  ngOnInit(): void {
    this.peliculas= 
      [
        {
            "nombre": "Crepúsculo",
            "saldo": 300000,
            "tipo": "Debito",
            "fechaexp": "12/7/2026"
        },
        {
          "nombre": "Como si fuera la primera vez",
          "saldo": 1250000,
          "tipo": "Credito",
          "fechaexp": "15/3/2025"
      }
      ]
  }

}
