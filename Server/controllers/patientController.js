'use strict';

// Importing the model
const PatientModel = require('../models/PatientModel');
const catchAsync = require('../utils/catchAsync');

const getPatients = catchAsync(async (req, res, next) => {
  const patients = await PatientModel.find();
  res.status(200).json({
    status: 'success',
    data: { patients },
  });
});

const createPatient = catchAsync(async (req, res, next) => {
  const { name, email, mobile } = req.body;
  const newPatient = new PatientModel({ name, email, mobile });
  const patient = await newPatient.save();
  res.status(200).json({
    status: 'success',
    data: { patient },
  });
});

const getSinglePatient = catchAsync(async (req, res, next) => {
  const patient = await PatientModel.findById(req.params.id);

  if (!patient) return next(new AppError('Not found!', 404));

  res.status(200).json({
    status: 'success',
    data: { patient },
  });
});

module.exports = { getPatients, createPatient, getSinglePatient };
