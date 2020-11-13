'use strict';

// Importing functions from the controller
const {
  getAppointments,
  createAppointment,
} = require('../controllers/appointmentController');
const { protect, restrictTo } = require('../middlewares/protect');

// Importing the express router
const appointmentRouter = require('express').Router();

// Setting up the routes
appointmentRouter
  .route('/')
  .get(protect, getAppointments)
  .post(protect, restrictTo('patient'), createAppointment);

module.exports = appointmentRouter;
