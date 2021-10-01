import { NgModule } from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';
import { routing, appRoutingProviders } from './app.routings';
import { BrowserAnimationsModule } from '@angular/platform-browser/animations'
import {MatExpansionModule} from '@angular/material/expansion';

import { AppComponent } from './app.component';
import { LoginComponent } from './componentes/login/login.component';
import { MenubarComponent } from './componentes/menubar/menubar.component';
import { VistaprincipalComponent } from './componentes/vistaprincipal/vistaprincipal.component';
import { ProyeccionComponent } from './componentes/proyeccion/proyeccion.component';
import { AsientoComponent } from './componentes/asiento/asiento.component';
import { PagoComponent } from './componentes/pago/pago.component';


@NgModule({
  declarations: [
    AppComponent,
    LoginComponent,
    MenubarComponent,
    VistaprincipalComponent,
    ProyeccionComponent,
    AsientoComponent,
    PagoComponent
  ],
  imports: [
    BrowserModule,
    routing,
    BrowserAnimationsModule,
    MatExpansionModule,
  ],
  providers: [
    appRoutingProviders
  ],
  bootstrap: [AppComponent]
})
export class AppModule { }
