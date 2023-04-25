import 'package:flutter/material.dart';
import 'package:shopping_app/screens/login.dart';
import 'package:shopping_app/config/routes.dart';

void main() {
  runApp(MaterialApp(
    // home: Login(),
    initialRoute: '/',
    routes: getRoutes(),
  ));
}

