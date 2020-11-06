('use strict');

// Importing the app error class
const AppError = require('../utils/appError');
const doctorRouter = require('./doctorRoutes');
const patientRouter = require('./patientRoutes');

// Importing the routers
const userRouter = require('./userRoutes');

// Importing express router
const router = require('express').Router();

// Registering all routers
router.use('/users', userRouter);
router.use('/doctors', doctorRouter);
router.use('/patients', patientRouter);
router.use('/', (req, res) => {
    res.status(200).json({message: "Hello from Medone"})
});

// The 404 route
router.all('*', (req, res, next) => next(new AppError('Not found', 404)));

module.exports = router;
