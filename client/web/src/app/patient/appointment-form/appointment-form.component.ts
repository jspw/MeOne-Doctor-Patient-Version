import { Component, OnInit } from '@angular/core';
import { FormControl, FormGroup, Validators } from '@angular/forms';

@Component({
  selector: 'app-appointment-form',
  templateUrl: './appointment-form.component.html',
  styleUrls: ['./appointment-form.component.css']
})
export class AppointmentFormComponent implements OnInit {

  appointmentForm: FormGroup
  minDate : Date
  maxDate: Date
  doctors = [
    {
      name: 'Andrew'
    },
    {
      name: 'Garfield'
    },
    {
      name: 'Patty'
    },
  ]

  constructor() { }

  ngOnInit(): void {
    this.formInit()
    this.minDate = new Date()
    this.maxDate = new Date()
    this.maxDate.setDate(new Date().getDate() + 7)
    console.log(this.maxDate);
    
  }

  private formInit() {
    let doctor = ''
    let time = ''
    let disease = ''
    let details = ''

    this.appointmentForm = new FormGroup({
      doctor: new FormControl(doctor, [Validators.required]),
      time: new FormControl(time, [Validators.required]),
      disease: new FormControl(disease, [Validators.required]),
      details: new FormControl(details, [Validators.required]),
    })
  }

  onSubmit() {
    console.log(this.appointmentForm.value)
    
  }
}
