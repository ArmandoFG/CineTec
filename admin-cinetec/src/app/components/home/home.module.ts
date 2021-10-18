import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';

import { HomeRoutingModule } from './home-routing.module';
import { SharedModule } from '../shared/shared.module';
import { HomeComponent } from './home.component';
import { SucursalesComponent } from './sucursales/sucursales.component';
import { NavbarComponent } from './navbar/navbar.component';
import { EmpleadosComponent } from './empleados/empleados.component';
import { PeliculasComponent } from './peliculas/peliculas.component';
import { ProyeccionesComponent } from './peliculas/proyecciones/proyecciones.component';
import { AgregarPeliculaComponent } from './peliculas/agregar-pelicula/agregar-pelicula.component';
import { AgregarSalaComponent } from './sucursales/agregar-sala/agregar-sala.component';
import { AgregarEmpleadoComponent } from './empleados/agregar-empleado/agregar-empleado.component';
import {MatDatepickerModule} from '@angular/material/datepicker';
import { InicioComponent } from './inicio/inicio.component';



@NgModule({
  declarations: [
    HomeComponent,
    SucursalesComponent,
    NavbarComponent,
    EmpleadosComponent,
    PeliculasComponent,
    ProyeccionesComponent,
    AgregarPeliculaComponent,
    AgregarSalaComponent,
    AgregarEmpleadoComponent,
    InicioComponent
  ],
  imports: [
    CommonModule,
    HomeRoutingModule,
    SharedModule,
    MatDatepickerModule

  ]
})

/**
 * Clase para el modulo Home
 * @author Carmen Araya
 * */
export class HomeModule { }
