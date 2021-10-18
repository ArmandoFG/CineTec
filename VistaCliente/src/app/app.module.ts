import { NgModule } from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';
import { routing, appRoutingProviders } from './app.routings';
import { BrowserAnimationsModule } from '@angular/platform-browser/animations'
import {MatExpansionModule} from '@angular/material/expansion';
import { FormsModule } from '@angular/forms';
import { HttpClientModule} from '@angular/common/http';
import {MatDialogModule} from '@angular/material/dialog';

import { AppComponent } from './app.component';
import { LoginComponent } from './componentes/login/login.component';
import { MenubarComponent } from './componentes/menubar/menubar.component';
import { VistaprincipalComponent } from './componentes/vistaprincipal/vistaprincipal.component';
import { ProyeccionComponent } from './componentes/proyeccion/proyeccion.component';
import { AsientoComponent } from './componentes/asiento/asiento.component';
import { PagoComponent } from './componentes/pago/pago.component';
import { InformacionComponent } from './componentes/Informacion/informacion.component';
import { ClienteService } from './services/cliente.service';
import { PeticionesService } from './services/peticiones.service';
import { PopupComponent } from './componentes/popup/popup.component';
import { PeliculaService } from './services/pelicula.service';
import { FacturaComponent } from './componentes/factura/factura.component';
import { XmlComponent } from './componentes/xml/xml.component';


@NgModule({
  declarations: [
    AppComponent,
    LoginComponent,
    MenubarComponent,
    VistaprincipalComponent,
    ProyeccionComponent,
    AsientoComponent,
    PagoComponent,
    InformacionComponent,
    PopupComponent,
    FacturaComponent,
    XmlComponent
  ],
  imports: [
    BrowserModule,
    routing,
    BrowserAnimationsModule,
    MatExpansionModule,
    FormsModule,
    HttpClientModule,
    MatDialogModule
  ],
  providers: [
    appRoutingProviders,
    ClienteService,
    PeticionesService,
    PeliculaService
  ],
  bootstrap: [AppComponent]
})
export class AppModule { }
