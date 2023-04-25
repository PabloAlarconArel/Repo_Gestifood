import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/src/pages/inicioAdministrador.dart';
import 'package:firebase_auth/firebase_auth.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  String? _emailError;
  String? _passwordError;
  bool _rememberSession = false;

  void _validateFields() {
    if (_emailController.text.isEmpty) {
      setState(() {
        _emailError = 'Debe ingresar un correo electronico';
      });
    } else {
      setState(() {
        _emailError = null;
      });
    }

    if (_passwordController.text.isEmpty) {
      setState(() {
        _passwordError = 'Debe ingresar una contraseña';
      });
    } else {
      setState(() {
        _passwordError = null;
      });
    }
  }

  Future<void> _signIn() async {
    _validateFields();

    // Si ambos campos no están vacíos, inicia sesión y recuerda la sesión iniciada si se selecciona esa opción
    if (_emailController.text.isNotEmpty &&
        _passwordController.text.isNotEmpty) {
      try {
        final authResult =
            await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: _emailController.text.trim(),
          password: _passwordController.text.trim(),
        );
        if (_rememberSession) {
          await FirebaseAuth.instance.setPersistence(Persistence.LOCAL);
        } else {
          await FirebaseAuth.instance.setPersistence(Persistence.SESSION);
        }
        // El usuario ha iniciado sesión correctamente
      } on FirebaseAuthException catch (e) {
        if (e.code == 'user-not-found') {
          setState(() {
            _emailError =
                'No se encontró ningun usuario con este correo electronico';
          });
        } else if (e.code == 'wrong-password') {
          setState(() {
            _passwordError = 'La contraseña es incorrecta';
          });
        } else if (e.code == 'invalid-email') {
          setState(() {
            _emailError = 'El correo electronico no es válido';
          });
        } else {
          setState(() {
            _emailError =
                'Ha ocurrido un error. Por favor, inténtalo de nuevo.';
          });
        }
      } catch (e) {
        setState(() {
          _emailError = 'Ha ocurrido un error. Por favor, inténtalo de nuevo.';
        });
      }
    }
  }
  //void _submit() {
  //final isLogin = _formkey.currentState!.validate();
  //if (!isLogin) {
  //return;
  //}
  // Aquí puede agregar la lógica para procesar el inicio de sesión
  //final route = MaterialPageRoute(
  //builder: (context) => const InicioAdministrador(),
  //);
  //Navigator.push(context, route);
  //}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      // AppBar //
      appBar: AppBar(
        elevation: 0,
        title: const Center(
          child: Text(
            "GestiFood",
            style: TextStyle(
              fontFamily: 'Yesteryear',
              fontSize: 35,
            ),
          ),
        ),
        backgroundColor: const Color.fromRGBO(1, 46, 103, 1),
      ),
      body: Form(
        //key: _formkey,
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
              const Text(
                "¡Bienvenido de vuelta!",
                style: TextStyle(
                  color: Color.fromRGBO(57, 57, 57, 1),
                  fontSize: 28,
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(2.0),
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
                      controller: _emailController,
                      //onChanged: (data) {
                      //_email = data;
                      //},
                      //validator: (data) {
                      //if (data == null || !data.contains('@')) {
                      //return "Introduzca un correo electrónico válido";
                      //}
                      //return null;
                      //},
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        labelText: 'Correo electrónico',
                        errorText: _emailError,
                        prefixIcon: const Icon(
                          color: Color.fromRGBO(0, 0, 0, 0.7),
                          Icons.mail_outline_outlined,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        errorStyle: const TextStyle(fontSize: 9),
                        contentPadding:
                            const EdgeInsets.symmetric(horizontal: 20),
                      ),
                      style: const TextStyle(fontSize: 13),
                      maxLines: 1, // Establecer el número máximo de líneas en 1
                    ),
                  ),

                  // Contraseña
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 38),
                    child: TextField(
                      controller: _passwordController,
                      //onChanged: (data) {
                      //_password = data;
                      //},
                      //validator: (data) {
                      //if (data == null || data.trim().length == 0) {
                      //return 'Introduzca una contraseña';
                      //}
                      //return null;
                      //},
                      obscureText: true,
                      decoration: InputDecoration(
                        labelText: 'Contraseña',
                        errorText: _passwordError,
                        prefixIcon: const Icon(
                          color: Color.fromRGBO(0, 0, 0, 0.7),
                          Icons.lock_person_outlined,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        errorStyle: const TextStyle(fontSize: 9),
                        contentPadding: const EdgeInsets.symmetric(
                            horizontal:
                                20), // Establecer relleno interno del TextFormField
                      ),
                      style: const TextStyle(fontSize: 13),
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
                              value: _rememberSession,
                              onChanged: (value) {
                                setState(() {
                                  _rememberSession = value!;
                                });
                              },
                              activeColor: Color.fromRGBO(1, 46, 103, 1),
                              visualDensity: VisualDensity.compact,
                              shape: CircleBorder(),
                              materialTapTargetSize:
                                  MaterialTapTargetSize.shrinkWrap,
                            ),
                          ),
                          const Text(
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
                      onPressed: _signIn,
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
