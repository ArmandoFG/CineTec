import { Component, OnInit } from '@angular/core';

@Component({
  selector: 'menubar',
  templateUrl: './menubar.component.html',
  styleUrls: ['./menubar.component.css']
})
export class MenubarComponent implements OnInit {
  nombreUsuario: string;
  constructor() { 
    this.nombreUsuario="Fabricio";
  }

  ngOnInit(): void {

  }

}
