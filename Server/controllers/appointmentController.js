'use strict';

// Importing the model
const catchAsync = require('../utils/catchAsync');
const AppointmentModel = require('../models/AppointmentModel');

const getAppointments = catchAsync(async (req, res, next) => {
  const appointments = await AppointmentModel.find().populate('patient doctor');
  res.status(200).json({
    status: 'success',
    data: { appointments },
  });
});

const createAppointment = catchAsync(async (req, res, next) => {
  const { disease, time, patient, doctor } = req.body;
  const newAppointment = new AppointmentModel({ disease, time, patient, doctor });
  const appointment = await newAppointment.save();
  res.status(200).json({
    status: 'success',
    data: { appointment },
  });
});

const getSingleAppointment = catchAsync(async (req, res, next) => {
  const appointment = await AppointmentModel.findById(req.params.id).populate('patient doctor');

  if (!appointment) return next(new AppError('Not found!', 404));

  res.status(200).json({
    status: 'success',
    data: { appointment },
  });
});

module.exports = { getAppointments, createAppointment, getSingleAppointment };
