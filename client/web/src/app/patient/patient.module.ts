import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { MaterialModule } from '../material.module';

import { PatientRoutingModule } from './patient-routing.module';
import { PatientComponent } from './patient.component';
import { NavbarComponent } from './navbar/navbar.component';
import { FormModalComponent } from './form-modal/form-modal.component';
import { FormComponent } from './form-modal/form/form.component';


@NgModule({
  declarations: [
    PatientComponent,
    NavbarComponent,
    FormModalComponent,
    // FormComponent
  ],
  entryComponents: [
    FormComponent
  ],
  imports: [
    CommonModule,
    PatientRoutingModule,
    MaterialModule
  ]
})
export class PatientModule { }
