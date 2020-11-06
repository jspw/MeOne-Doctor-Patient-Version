'use strict';

const { getAppointments, createAppointment, getSingleAppointment } = require('../controllers/appointmentController');


// Importing functions from the controller


// Importing the express router
const appointmentRouter = require('express').Router();

// Setting up the routes
appointmentRouter.route('/').get(getAppointments).post(createAppointment);
appointmentRouter.route('/:id').get(getSingleAppointment);

module.exports = appointmentRouter;
