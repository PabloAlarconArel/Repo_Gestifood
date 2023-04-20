import 'package:flutter/material.dart';

class InputTextField extends StatelessWidget {
  final String? hintText;
  final String? labelText;
  final IconData? icon;
  final TextInputType? keyboardType;

  const InputTextField(
      {Key? key, this.hintText, this.labelText, this.icon, this.keyboardType})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autofocus: true,
      initialValue: '',
      textCapitalization: TextCapitalization.words,
      keyboardType: keyboardType,
      decoration: InputDecoration(
        hintText: hintText, //placeholder
        labelText: labelText, //texto de la etiqueta
        icon: icon == null ? null : Icon(icon), //icono del input
      ),
      validator: (value) {
        if (value == null) return 'Campo Requerido';
        return value.length < 5 ? 'Mínimo de 5 caracteres' : null;
      },
      autovalidateMode: AutovalidateMode.onUserInteraction,
    );
  }
}
