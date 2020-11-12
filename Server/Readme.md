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

### Users

#### Get All Users

Request: `PROTECTED` `GET` `/users`

Header:

```json
{
  "Authorization": "Bearer JWT_TOKEN"
}
```

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

Header:

```json
{
  "Authorization": "Bearer JWT_TOKEN"
}
```

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

### Profile

#### Get User Profile

Request: `PROTECTED` `GET` `/users/me`

Header:

```json
{
  "Authorization": "Bearer JWT_TOKEN"
}
```

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

#### Update User Profile

Request: `PROTECTED` `PUT` `/users/me`

Header:

```json
{
  "Authorization": "Bearer JWT_TOKEN"
}
```

Bpdy:

```json
{
  "name": "Text",
  "phone": "Text"
}
```

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
