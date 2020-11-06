'use strict';

const { getPatients, createPatient, getSinglePatient } = require('../controllers/patientController');

// Importing functions from the controller


// Importing the express router
const patientRouter = require('express').Router();

// Setting up the routes
patientRouter.route('/').get(getPatients).post(createPatient);
patientRouter.route('/:id').get(getSinglePatient);

module.exports = patientRouter;
