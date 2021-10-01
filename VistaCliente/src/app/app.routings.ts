//Importar modulos 
import { ModuleWithProviders } from "@angular/core";
import {Routes, RouterModule } from "@angular/router";

//Importar componentes
import { LoginComponent } from "./componentes/login/login.component";
import { MenubarComponent } from "./componentes/menubar/menubar.component";
import { VistaprincipalComponent } from "./componentes/vistaprincipal/vistaprincipal.component";
import { AsientoComponent } from "./componentes/asiento/asiento.component";
import { PagoComponent } from "./componentes/pago/pago.component";
import { ProyeccionComponent } from "./componentes/proyeccion/proyeccion.component";

//Array de rutas
const appRoutes: Routes= [
    {path: '', component: LoginComponent},
    {path: 'Cartelera', component: VistaprincipalComponent},
    {path: 'Proyecciones', component: ProyeccionComponent},
    {path: 'Asientos', component: AsientoComponent},
    {path: 'Pago', component: PagoComponent},
    {path: '**', component: VistaprincipalComponent}
    //
];

//Exportar el modulo del router
export const appRoutingProviders: any[]= [];
export const routing: ModuleWithProviders<any> = RouterModule.forRoot(appRoutes);