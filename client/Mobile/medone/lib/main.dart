import 'package:flutter/material.dart';
import 'package:medone/Patient/Screens/doctorsSuggest.dart';
import 'package:medone/Patient/Screens/selectSymtoms.dart';
import 'package:medone/Patient/Screens/symtomsFindingSelectPart.dart';
import 'Admin/Screens/login.dart';
import 'Patient/Screens/patientHome.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      brightness: Brightness.light,
      backgroundColor: Colors.cyan,
      primaryColor: Colors.indigoAccent,
      accentColor: Colors.yellow,
      canvasColor: Colors.grey,
      hoverColor: Colors.teal,
      buttonColor: Colors.blueGrey,
      textTheme: TextTheme(
        headline1: TextStyle(
            fontSize: 22.0, fontWeight: FontWeight.w900, color: Colors.white),
        headline2: TextStyle(
            fontSize: 20.0,
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.w500,
            color: Colors.black),
        bodyText2: TextStyle(
          fontSize: 18.0,
        ),
      ),
    ),
    initialRoute: PatientHome.route,
    routes: {
      Login.route: (context) => Login(),
      PatientHome.route: (context) => PatientHome(),
      SymtomsFindingSelectPart.route: (context) => SymtomsFindingSelectPart(),
      SelectSymtoms.route: (context) => SelectSymtoms(),
      DoctorsSuggest.route: (contex) => DoctorsSuggest(),
    },
  ));
}
