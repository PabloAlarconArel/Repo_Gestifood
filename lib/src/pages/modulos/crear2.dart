import 'package:flutter/material.dart';

class Crear2 extends StatefulWidget {
  const Crear2({Key? key}) : super(key: key);

  @override
  State<Crear2> createState() => Create2();
}

class Create2 extends State<Crear2> {
  List<Card> _cards = [];
  int _cardCount = 0;
  @override
  Widget build(BuildContext context) {
    var scaffold = Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        title: const Text(
          "Mesas",
          style: TextStyle(
            fontFamily: 'Yesteryear',
            fontSize: 35,
          ),
        ),
        centerTitle:
            true, // Establecer esta propiedad en true para centrar el título
        backgroundColor: const Color.fromRGBO(1, 46, 103, 1),
      ),
      body: ListView.builder(
        itemCount: _cardCount,
        itemBuilder: (BuildContext context, int index) {
          return _cards[index];
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          FloatingActionButton(
            child: const Icon(
                Icons.add), //agrega icono, pruebe con  otras opciones
            onPressed: () {
              setState(() {
                _cards.add(
                  Card(
                    child: Column(
                      children: [
                        ListTile(
                          leading: Icon(Icons.table_restaurant),
                          title: Text('Mesa ${_cards.length + 1}'),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 5),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              TextButton(
                                  onPressed: () {
                                    Navigator.pushNamed(context, 'editar');
                                  },
                                  child: const Text('Editar')),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                );
                _cardCount++;
              });
            }, //metodo que detona la función al presiona el boton
          ),
        ],
      ),
    );
    return scaffold;
  }
}
