import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';

import { PatientRoutingModule } from './patient-routing.module';
import { PatientComponent } from './patient.component';
import { NavbarComponent } from './navbar/navbar.component';
import { MaterialModule } from '../material.module';


@NgModule({
  declarations: [
    PatientComponent,
      NavbarComponent],
  imports: [
    CommonModule,
    PatientRoutingModule,
    MaterialModule
  ]
})
export class PatientModule { }
