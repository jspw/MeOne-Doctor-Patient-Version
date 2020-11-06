'use strict';

// Importing the model
const catchAsync = require('../utils/catchAsync');
const DoctorModel = require('../models/DoctorModel');

const getDoctors = catchAsync(async (req, res, next) => {
  const doctors = await DoctorModel.find();
  res.status(200).json({
    status: 'success',
    data: { doctors },
  });
});

const createDoctor = catchAsync(async (req, res, next) => {
  const { name } = req.body;
  const newDoctor = new DoctorModel({ name });
  const doctor = await newDoctor.save();
  res.status(200).json({
    status: 'success',
    data: { doctor },
  });
});

const getSingleDoctor = catchAsync(async (req, res, next) => {
  const doctor = await DoctorModel.findById(req.params.id);

  if (!doctor) return next(new AppError('Not found!', 404));

  res.status(200).json({
    status: 'success',
    data: { Doctor: doctor },
  });
});

module.exports = { getDoctors, createDoctor, getSingleDoctor };
