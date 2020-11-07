import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
// import { DoctorRoutingModule } from './doctor-routing.module';
import { NavbarComponent } from './navbar.component';
import { MaterialModule } from '../../material.module';


@NgModule({
  declarations: [NavbarComponent],
  imports: [
    CommonModule,
    MaterialModule
  ]
})
export class NavbarModule { }
