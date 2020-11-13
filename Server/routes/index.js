('use strict');

// Importing the app error class
const AppError = require('../utils/appError');
const appointmentRouter = require('./appointmentRoutes');

// Importing the routers
const chamberRouter = require('./chamberRoutes');
const userRouter = require('./userRoutes');

// Importing express router
const router = require('express').Router();

// Registering all routers
router.use('/users', userRouter);
router.use('/chambers', chamberRouter);
router.use('/appointments', appointmentRouter);

// The 404 route
router.all('*', (req, res, next) => next(new AppError('Not found', 404)));

module.exports = router;
