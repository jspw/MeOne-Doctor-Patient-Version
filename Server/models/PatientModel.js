'use strict';

// Importing mongoose and Schema
const mongoose = require('mongoose');
const validator = require('validator');
const Schema = mongoose.Schema;

// Creating a schema
const patientSchema = new Schema({
  name: {
    type: String,
    required: [true, 'Name is required'],
  },
  email: {
    type: String,
    validate: validator.isEmail
  },
  mobile: {
    type: String,
  }
});

// Creating model from a Schema
const PatientModel = mongoose.model('Patient', patientSchema);

module.exports = PatientModel;
