'use strict';

const AppointmentModel = require('../models/AppointmentModel');
const catchAsync = require('../utils/catchAsync');

const getAppointments = catchAsync(async (req, res, next) => {
  const appointments = await AppointmentModel.find();

  res.status(200).json({
    status: 'success',
    data: { appointments },
  });
});

const createAppointment = catchAsync(async (req, res, next) => {
  const { disease, date, doctor, chamber, note } = req.body;
  const patient = req.user._id;

  const newAppointment = new AppointmentModel({
    disease,
    date,
    doctor,
    chamber,
    note,
    patient,
  });
  const appointment = await newAppointment.save();

  res.status(200).json({
    status: 'success',
    data: { appointment },
  });
});

module.exports = { getAppointments, createAppointment };
