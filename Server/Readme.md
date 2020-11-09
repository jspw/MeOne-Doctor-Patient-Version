# Medone Server

## Start Server

At first you have to create a `.env` file, and add your `MONGO_URI` in it. Have a look at the `.env.example` for more information.

Then run `npm i` to install the required packages. Then run `npm run dev` to start the development server (Nodemon is required). Or run `npm start` to start the production server.

## API Documentation

### Authorization

#### Registration

Request: `POST` `/users`

Body:

```json
{
  "name": "Text",
  "email": "Email",
  "password": "Text",
  "nid": "Text",
  "phone": "Text",
  "dateOfBirth": "Date",
  "role": ["patient", "doctor", "pharmacy", "super-admin"]
}
```

Response:

```json
{
  "status": "success",
  "token": "JWT Token",
  "data": {
    "user": {
      "role": "Text",
      "_id": "ObjectID",
      "name": "Text",
      "email": "Email",
      "nid": "Text",
      "phone": "Text",
      "dateOfBirth": "Date",
      "registered_at": "Date"
    }
  }
}
```

#### Login

Request: `POST` `/users/login`

Body:

```json
{
  "email": "Email",
  "password": "Text"
}
```

Response:

```json
{
  "status": "success",
  "token": "JWT Token",
  "data": {
    "user": {
      "role": "Text",
      "_id": "ObjectID",
      "name": "Text",
      "email": "Email",
      "nid": "Text",
      "phone": "Text",
      "dateOfBirth": "Date",
      "registered_at": "Date"
    }
  }
}
```

#### Get All Users

Request: `PROTECTED` `GET` `/users`

Response:

```json
{
  "status": "success",
  "data": [
    {
      "user": {
        "role": "Text",
        "_id": "ObjectID",
        "name": "Text",
        "email": "Email",
        "nid": "Text",
        "phone": "Text",
        "dateOfBirth": "Date",
        "registered_at": "Date"
      }
    }
  ]
}
```

#### Get Single User

Request: `PROTECTED` `GET` `/users/:id`

Response:

```json
{
  "status": "success",
  "data": {
    "user": {
      "role": "Text",
      "_id": "ObjectID",
      "name": "Text",
      "email": "Email",
      "nid": "Text",
      "phone": "Text",
      "dateOfBirth": "Date",
      "registered_at": "Date"
    }
  }
}
```
