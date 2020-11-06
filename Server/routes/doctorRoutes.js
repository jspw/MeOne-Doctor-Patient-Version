'use strict';

const { getDoctors, createDoctor, getSingleDoctor } = require('../controllers/doctorController');

// Importing functions from the controller


// Importing the express router
const doctorRouter = require('express').Router();

// Setting up the routes
doctorRouter.route('/').get(getDoctors).post(createDoctor);
doctorRouter.route('/:id').get(getSingleDoctor);

module.exports = doctorRouter;
