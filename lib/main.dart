import 'package:flutter/material.dart';
import 'package:flutter_application_1/src/pages/inicioAdministador.dart';
import 'package:flutter_application_1/src/pages/inicioEmpleado.dart';
import 'package:flutter_application_1/src/pages/login.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: 'login',
      routes: <String, WidgetBuilder>{
        'login': ((BuildContext) => Login()),
        'inicioAdministrador': ((BuildContext) => inicioAdministrador()),
        'inicioEmpleado': ((BuildContext) => inicioEmpleado()),
      },
    );
  }
}
