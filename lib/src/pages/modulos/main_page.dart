import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/src/pages/login.dart';
import 'package:flutter_application_1/src/pages/modulos/main_page.dart';
import 'package:flutter_application_1/src/pages/inicioAdministrador.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot){
          if(snapshot.hasData){
            return InicioAdministrador();
          }else{
            return Login();
          }
        },
      ),
    );
  }
}