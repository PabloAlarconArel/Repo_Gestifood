import 'package:flutter/material.dart';
import '../../widgets/widgets.dart';

class VerPage extends StatelessWidget {
  const VerPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final arguments = (ModalRoute.of(context)?.settings.arguments ??
        <String, dynamic>{}) as Map;
    final ver = arguments[''];
    return Scaffold(
        appBar: AppBar(
          title: const Text('Ver'),
        ),
        body: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
          children: [
            CardViewF1(ver: ver),
            //const SizedBox(height: 10),//añade una separación entre tarjetas
            //const CardViewImage(),
            const SizedBox(height: 10), //añade una separación entre tarjetas
          ],
        ));
  }
}
