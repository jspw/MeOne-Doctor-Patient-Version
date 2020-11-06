'use strict';

// Importing mongoose and Schema
const mongoose = require('mongoose');
const Schema = mongoose.Schema;

// Creating a schema
const doctorSchema = new Schema({
  name: {
    type: String,
    required: [true, 'Name is required'],
  }
});

// Creating model from a Schema
const DoctorModel = mongoose.model('Doctor', doctorSchema);

module.exports = DoctorModel;
