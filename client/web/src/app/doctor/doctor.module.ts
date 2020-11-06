import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';

import { DoctorRoutingModule } from './doctor-routing.module';
import { DoctorComponent } from './doctor.component';
import { AppointmentTableComponent } from './appointment-table/appointment-table.component';
import { MaterialModule } from '../material.module';


@NgModule({
  declarations: [
    DoctorComponent,
    AppointmentTableComponent
  ],
  imports: [
    CommonModule,
    DoctorRoutingModule,

    MaterialModule
  ]
})
export class DoctorModule { }
