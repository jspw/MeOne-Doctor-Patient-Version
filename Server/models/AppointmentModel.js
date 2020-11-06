'use strict';

// Importing mongoose and Schema
const mongoose = require('mongoose');
const validator = require('validator');
const Schema = mongoose.Schema;

// Creating a schema
const appointmentSchema = new Schema({
  disease: {
    type: String,
    required: [true, 'Disease is required'],
  },
  time: {
      type: Date,
      default: new Date()
  },
  doctor: {
      type: Schema.Types.ObjectId,
      ref: 'Doctor'
  },
  patient: {
      type: Schema.Types.ObjectId,
      ref: 'Patient'
  }
});

// Creating model from a Schema
const AppointmentModel = mongoose.model('Appointment', appointmentSchema);

module.exports = AppointmentModel;
