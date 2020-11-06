'use strict';

const { getPatients, createPatient } = require('../controllers/doctorController copy');

// Importing functions from the controller


// Importing the express router
const patientRouter = require('express').Router();

// Setting up the routes
patientRouter.route('/').get(getPatients).post(createPatient);

module.exports = patientRouter;
