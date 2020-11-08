import { Component, OnInit } from '@angular/core';
import { FormGroup } from '@angular/forms';

@Component({
  selector: 'app-form',
  templateUrl: './form.component.html',
  styleUrls: ['./form.component.css']
})
export class FormComponent implements OnInit {

  appointmentForm : FormGroup

  constructor() { }

  ngOnInit(): void {
  }

  private formInit() 
  {
    this.appointmentForm = new FormGroup({
      
    })
  }

}
