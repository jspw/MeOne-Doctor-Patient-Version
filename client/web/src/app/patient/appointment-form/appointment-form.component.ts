import { Component, OnInit } from '@angular/core';
import { FormControl, FormGroup, Validators } from '@angular/forms';

@Component({
  selector: 'app-appointment-form',
  templateUrl: './appointment-form.component.html',
  styleUrls: ['./appointment-form.component.css']
})
export class AppointmentFormComponent implements OnInit {

  appointmentForm: FormGroup
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
  }

  private formInit() {
    let doctor = ''
    let time = ''
    let disease = ''
    let note = ''

    this.appointmentForm = new FormGroup({
      doctor: new FormControl(doctor, [Validators.required]),
      time: new FormControl(time, [Validators.required]),
      disease: new FormControl(disease, [Validators.required]),
      details: new FormControl(note, [Validators.required]),
    })
  }

  onSubmit() {
    console.log(this.appointmentForm)
  }
}
