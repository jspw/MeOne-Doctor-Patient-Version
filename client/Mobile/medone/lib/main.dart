import 'package:flutter/material.dart';
import 'Admin/Screens/login.dart';
import 'Patient/Screens/patientHome.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      brightness: Brightness.light,
      backgroundColor: Colors.grey,
      primaryColor: Colors.blue,
      accentColor: Colors.white,
      textTheme: TextTheme(
        headline1: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
        headline6: TextStyle(fontSize: 36.0, fontStyle: FontStyle.italic),
        bodyText2: TextStyle(
          fontSize: 18.0,
        ),
      ),
    ),
    initialRoute: PatientHome.route,
    routes: {
      Login.route: (context) => Login(),
      PatientHome.route: (context) => PatientHome(),
    },
  ));
}
