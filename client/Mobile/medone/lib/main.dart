import 'package:flutter/material.dart';
import 'package:medone/Admin/Screens/login.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      backgroundColor: Colors.grey,
      primaryColor: Colors.blueGrey,
      accentColor: Colors.indigo,

    ),

    initialRoute: '/login',

    routes: {
      '/login' : (context) => Login(),

    },

  ));
}
