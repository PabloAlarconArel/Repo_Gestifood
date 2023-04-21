import 'package:flutter/material.dart';
import 'package:flutter_application_1/src/pages/pages.dart';

class AppRoutes {
  static const initialRoute = 'login';

  static Map<String, Widget Function(BuildContext)> routes = {
    'login': (BuildContext) => const Login(),
    'inicioAdministrador': (BuildContext) => const InicioAdministrador(),
    'inicioEmpleado': (BuildContext) => const InicioEmpleado(),
    'editar': (BuildContext) => const EditarPage(),
    'crear2': (BuildContext) => const Crear2(),
    'error': (BuildContext) => const Error(),
  };

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(
      builder: (context) => const Error(),
    );
  }
}
