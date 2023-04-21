import 'package:flutter/material.dart';
import '../../widgets/widgets.dart';

class EditarPage extends StatelessWidget {
  const EditarPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0.0,
          title: const Text(
            "Editar",
            style: TextStyle(
              fontFamily: 'Yesteryear',
              fontSize: 35,
            ),
          ),
          centerTitle:
              true, // Establecer esta propiedad en true para centrar el título
          backgroundColor: const Color.fromRGBO(1, 46, 103, 1),
        ),
        body: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
          child: Column(children: [
            const InputTextField(
                hintText: 'editar',
                labelText: 'Nombre',
                icon: Icons.table_bar,
                keyboardType: TextInputType.text),
            const SizedBox(height: 10), //añade una separación
            const InputTextField(
                hintText: 'editar',
                labelText: 'Tipo',
                icon: Icons.data_usage,
                keyboardType: TextInputType.number),
            const SizedBox(height: 10), //añade una separación
            ElevatedButton(
              child: const Center(child: Text('Guardar')),
              onPressed: () => {},
            ),
            const SizedBox(height: 10), //añade una separación
            ElevatedButton(
              child: const Center(child: Text('Borrar')),
              onPressed: () => {},
            )
          ]),
        ));
  }
}
