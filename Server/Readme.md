# Medone Server

## Table of Contents

- [Start Server](#start-server)
- [API Documentation](#api-documentation)
  - [Doctors `/doctors`](#doctors---doctors-)
    - [Get all doctors](#get-all-doctors)
    - [Create a doctor](#create-a-doctor)
    - [Get Single Doctor](#get-single-doctor)
  - [Patients `/patients`](#patients---patients-)
    - [Get all patients](#get-all-patients)
    - [Create a patient](#create-a-patient)
    - [Get single patient](#get-single-patient)
  - [Appointments `/appointments`](#appointments---appointments-)
    - [Get all appointments](#get-all-appointments)
    - [Create a appointment](#create-a-appointment)
    - [Get single appointment](#get-single-appointment)

## Start Server

At first you have to create a `.env` file, and add your `MONGO_URI` in it. Have a look at the `.env.example` for more information.

Then run `npm i` to install the required packages. Then run `npm run dev` to start the development server (Nodemon is required). Or run `npm start` to start the production server.

## API Documentation

### Doctors `/doctors`

#### Get all doctors

Request: `GET` `/doctors`

Response:

```json
{
    "status": "success",
    "data": {
        "doctors": [
            {
                "_id",
                "name",
                "__v"
            },
            ...
        ]
    }
}
```

#### Create a doctor

Request: `POST` `/doctors`

Body:

```json
{
    "name"
}
```

Response:

```json
{
    "status": "success",
    "data": {
        "doctor": {
            "_id",
            "name",
            "__v"
        }
    }
}
```

#### Get Single Doctor

Request: `GET` `/doctors/:id`

Response:

```json
{
    "status": "success",
    "data": {
        "doctor": {
            "_id",
            "name",
            "__v"
        }
    }
}
```

### Patients `/patients`

#### Get all patients

Request: `GET` `/patients`

Response:

```json
{
    "status": "success",
    "data": {
        "patients": [
            {
                "_id",
                "name",
                "email",
                "mobile",
                "__v"
            },
            ...
        ]
    }
}
```

#### Create a patient

Request: `POST` `/patients`

Body:

```json
{
    "name",
    "email",
    "mobile"
}
```

Response:

```json
{
    "status": "success",
    "data": {
        "patient": {
            "_id",
            "name",
            "email",
            "mobile",
            "__v"
        }
    }
}
```

#### Get single patient

Request: `GET` `/patients/:id`

Response:

```json
{
    "status": "success",
    "data": {
        "patient": {
            "_id",
            "name",
            "email",
            "mobile",
            "__v"
        }
    }
}
```

### Appointments `/appointments`

#### Get all appointments

Request: `GET` `/appointments`

Response:

```json
{
    "status": "success",
    "data": {
        "appointments": [
            {
                "time",
                "_id",
                "disease",
                "patient": {
                    "_id",
                    "name",
                    "email",
                    "mobile",
                    "__v"
                },
                "doctor": {
                    "_id",
                    "name",
                    "__v"
                },
                "__v"
            },
            ...
        ]
    }
}
```

#### Create a appointment

Request: `POST` `/appointments`

Body:

```json
{
    "disease",
    "patient": "patientID",
    "doctor": "doctorID"
}
```

Response:

```json
{
    "status": "success",
    "data": {
        "appointment": {
            "time",
            "_id",
            "disease",
            "patient",
            "doctor",
            "__v"
        }
    }
}
```

#### Get single appointment

Request: `GET` `/appointments/:id`

Response:

```json
{
    "status": "success",
    "data": {
        "appointment": {
            "time",
            "_id",
            "disease",
            "patient",
            "doctor",
            "__v"
        }
    }
}
```
