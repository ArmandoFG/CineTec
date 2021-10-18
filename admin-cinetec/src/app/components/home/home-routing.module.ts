import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';
import { AgregarEmpleadoComponent } from './empleados/agregar-empleado/agregar-empleado.component';
import { EmpleadosComponent } from './empleados/empleados.component';
import { HomeComponent } from './home.component';
import { AgregarPeliculaComponent } from './peliculas/agregar-pelicula/agregar-pelicula.component';
import { PeliculasComponent } from './peliculas/peliculas.component';
import { ProyeccionesComponent } from './peliculas/proyecciones/proyecciones.component';
import { AgregarSalaComponent } from './sucursales/agregar-sala/agregar-sala.component';
import { SucursalesComponent } from './sucursales/sucursales.component';
import { InicioComponent } from './inicio/inicio.component';

const routes: Routes = [
  {path: '', component: HomeComponent, children:[
    { path: 'empleados', component: EmpleadosComponent },
    { path: 'inicio', component:  InicioComponent},
    { path: 'sucursales', component: SucursalesComponent },
    { path: 'peliculas', component: PeliculasComponent },
    { path: 'peliculas/proyecciones/:nombre_pelicula', component: ProyeccionesComponent},
    { path: 'peliculas/agregar-pelicula', component: AgregarPeliculaComponent},
    { path: 'peliculas/edit-pelicula/:nombre_pelicula', component: AgregarPeliculaComponent},
    { path: 'sucursales/edit-sucursal/:id_sucursal/:nombre_cine', component: AgregarSalaComponent},
    { path: 'sucursales/agregar-sala', component: AgregarSalaComponent},
    { path: 'empleados/agregar-empleado', component: AgregarEmpleadoComponent},
    { path: 'empleados/edit-empleado/:cedula', component: AgregarEmpleadoComponent}
  ]},

];

@NgModule({
  imports: [RouterModule.forChild(routes)],
  exports: [RouterModule]
})

/**
 * Clase para el Routing Module Home
 * @author Carmen Araya
 * */
export class HomeRoutingModule { }
