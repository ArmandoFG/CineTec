import { Component, OnInit, ViewChild,  Output, EventEmitter, Input } from '@angular/core';



@Component({
  selector: 'informacion',
  template: ``
})
export class InformacionComponent implements OnInit {
  message:string;
  
  constructor(
  ) {
      this.message='';
   }

  ngOnInit(): void {
  }
  

}