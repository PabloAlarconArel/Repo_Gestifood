import 'package:flutter/material.dart';

class CardViewF1 extends StatelessWidget {
  const CardViewF1({
    Key? key,
    required this.ver,
  }) : super(key: key);

  final String ver;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(children: [
        ListTile(
          leading: const Icon(Icons.payment),
          title: Text(ver),
          subtitle: const Text("colocaremos una breve descripción"),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextButton(
                onPressed: () {},
                child: const Text('Editar'),
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
