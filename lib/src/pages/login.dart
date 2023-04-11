import 'package:flutter/material.dart';
import 'package:flutter_application_1/src/pages/inicioAdministador.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  GlobalKey<FormState> _formkey = GlobalKey();
  bool _isChecked = false;
  String _email = '';
  String _password = '';

  void _submit() {
    final isLogin = _formkey.currentState!.validate();
    if (!isLogin) {
      return;
    }
    // Aquí puede agregar la lógica para procesar el inicio de sesión
    final route = MaterialPageRoute(
      builder: (context) => inicioAdministrador(),
    );
    Navigator.push(context, route);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      // AppBar //
      appBar: AppBar(
        elevation: 0,
        title: Center(
          child: Text(
            "GestiFood",
            style: TextStyle(
              fontFamily: 'Yesteryear',
              fontSize: 35,
            ),
          ),
        ),
        backgroundColor: Color.fromRGBO(1, 46, 103, 1),
      ),
      body: Form(
        key: _formkey,
        child: Container(
          width: double.infinity,
          color: Colors.white,
          child: Column(
            children: [
              SizedBox(
                height: 200.0,
                width: 200.0,
                child: Image.asset('assets/img/LogoApp.jpg'),
              ),
              Text(
                "¡Bienvenido de vuelta!",
                style: TextStyle(
                  color: Color.fromRGBO(57, 57, 57, 1),
                  fontSize: 28,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(2.0),
                child: Text(
                  "Nos alegramos de verte de nuevo",
                  style: TextStyle(
                    color: Color.fromRGBO(0, 0, 0, 0.7),
                    fontSize: 12,
                  ),
                ),
              ),
              Column(
                children: [
                  // Correo electronico
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 38, vertical: 11),
                    child: TextFormField(
                      onChanged: (data) {
                        _email = data;
                      },
                      validator: (data) {
                        if (data == null || !data.contains('@')) {
                          return "Introduzca un correo electrónico válido";
                        }
                        return null;
                      },
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        labelText: 'Correo electrónico',
                        prefixIcon: Icon(
                          color: Color.fromRGBO(0, 0, 0, 0.7),
                          Icons.mail_outline_outlined,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        errorStyle: TextStyle(fontSize: 9),
                        contentPadding:
                            const EdgeInsets.symmetric(horizontal: 20),
                      ),
                      style: TextStyle(fontSize: 13),
                      maxLines: 1, // Establecer el número máximo de líneas en 1
                    ),
                  ),

                  // Contraseña
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 38),
                    child: TextFormField(
                      onChanged: (data) {
                        _password = data;
                      },
                      validator: (data) {
                        if (data == null || data.trim().length == 0) {
                          return 'Introduzca una contraseña';
                        }
                        return null;
                      },
                      obscureText: true,
                      decoration: InputDecoration(
                        labelText: 'Contraseña',
                        prefixIcon: Icon(
                          color: Color.fromRGBO(0, 0, 0, 0.7),
                          Icons.lock_person_outlined,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        errorStyle: TextStyle(fontSize: 9),
                        contentPadding: const EdgeInsets.symmetric(
                            horizontal:
                                20), // Establecer relleno interno del TextFormField
                      ),
                      style: TextStyle(fontSize: 13),
                      maxLines: 1, // Establecer el número máximo de líneas en 1
                    ),
                  ),

                  //Checkbox recordar contraseña
                  SizedBox(
                    height: 20,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 40),
                      child: Row(
                        children: [
                          Transform.scale(
                            scale: 0.6,
                            child: Checkbox(
                              value: _isChecked,
                              onChanged: (newValue) {
                                setState(() {
                                  _isChecked = newValue!;
                                });
                              },
                              activeColor: Color.fromRGBO(1, 46, 103, 1),
                              visualDensity: VisualDensity.compact,
                              shape: CircleBorder(),
                              materialTapTargetSize:
                                  MaterialTapTargetSize.shrinkWrap,
                            ),
                          ),
                          Text(
                            "Recordar contraseña",
                            style: TextStyle(
                              color: Color.fromRGBO(57, 57, 57, 1),
                              fontSize: 10,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  // Boton de iniciar sesion
                  SizedBox(
                    height: 6,
                  ),
                  SizedBox(
                    height: 45,
                    width: 140,
                    child: ElevatedButton(
                      onPressed: _submit,
                      child: Text(
                        "Iniciar sesión",
                        style: TextStyle(
                          fontSize: 12,
                        ),
                      ),
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                            Color.fromRGBO(1, 46, 103, 1)),
                        shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                      ),
                    ),
                  ),

                  // Boton de ¿Olvidaste tu contraseña?
                  SizedBox(
                    height: 28,
                    child: TextButton(
                      onPressed: () {
                        // Aquí puedes agregar el código que quieres ejecutar al presionar el texto
                      },
                      child: Text(
                        "¿Olvidaste tu contraseña?",
                        style: TextStyle(
                          color: Color.fromRGBO(57, 57, 57, 1),
                          fontSize: 10,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
