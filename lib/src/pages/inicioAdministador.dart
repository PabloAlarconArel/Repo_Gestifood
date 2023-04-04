import 'package:flutter/material.dart';

class inicioAdministrador extends StatelessWidget {
  const inicioAdministrador({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      // AppBar //
      appBar: AppBar(
        title: Text(
          "Menú principal",
          style: TextStyle(
            fontFamily: 'Yesteryear',
            fontSize: 35,
          ),
        ),
        centerTitle:
            true, // Establecer esta propiedad en true para centrar el título
        backgroundColor: Color.fromRGBO(0, 0, 0, 0.9),
      ),
      // Menu lateral (Drawer) //
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            SizedBox(
              height: 130,
              child: DrawerHeader(
                decoration: BoxDecoration(
                  color: Color.fromRGBO(0, 0, 0, 0.9),
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: SizedBox(
                            height: 60,
                            child: Image.asset("assets/img/ImagenPerfil.jpg"),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 33),
                          child: Column(
                            children: [
                              Text(
                                "Michael Morales",
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.white,
                                ),
                              ),
                              Text(
                                "Administrador",
                                style: TextStyle(
                                  fontSize: 13,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            ListTile(
              leading: SizedBox(
                height: 34,
                child: Image.asset("assets/img/IconoMenuPrincipal.jpg"),
              ),
              title: Text(
                'Menú principal',
                style: TextStyle(),
              ),
              onTap: () {},
            ),
            Divider(),
            ListTile(
              leading: SizedBox(
                height: 40,
                child: Image.asset("assets/img/IconoMesa.jpg"),
              ),
              title: Text('Mesas'),
              onTap: () {},
            ),
            ListTile(
              leading: SizedBox(
                height: 34,
                child: Image.asset("assets/img/IconoMenu.jpg"),
              ),
              title: Text('Menús'),
              onTap: () {},
            ),
            ListTile(
              leading: SizedBox(
                height: 38,
                child: Image.asset("assets/img/IconoIngresos.jpg"),
              ),
              title: Text('Pedidos'),
              onTap: () {},
            ),
            ListTile(
              leading: SizedBox(
                height: 38,
                child: Image.asset("assets/img/IconoGastos.jpg"),
              ),
              title: Text('Ventas'),
              onTap: () {},
            ),
            ListTile(
              leading: SizedBox(
                height: 38,
                child: Image.asset("assets/img/IconoInformes.jpg"),
              ),
              title: Text('Trabajadores'),
              onTap: () {},
            ),
            ListTile(
              leading: SizedBox(
                height: 38,
                child: Image.asset("assets/img/IconoInventario.jpg"),
              ),
              title: Text('Informes'),
              onTap: () {},
            ),
            ListTile(
              leading: SizedBox(
                height: 38,
                child: Image.asset("assets/img/IconoProveedor.jpg"),
              ),
              title: Text('Proveedores'),
              onTap: () {},
            ),
            ListTile(
              leading: SizedBox(
                height: 38,
                child: Image.asset("assets/img/IconoOrdenesdeCompra.jpg"),
              ),
              title: Text('Inventario'),
              onTap: () {},
            ),
            ListTile(
              leading: SizedBox(
                height: 34,
                child: Image.asset("assets/img/IconoCerrarSesion.jpg"),
              ),
              title: Text('Cerrar sesión'),
              onTap: () {},
            ),
          ],
        ),
      ),
      body: Container(
        color: Color.fromARGB(231, 231, 231, 231),
        padding: EdgeInsets.only(
          top: 15,
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Sección Mesas //
                Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.white),
                          shape: MaterialStateProperty.all(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                              side: BorderSide(
                                width: 0.5,
                                color: Colors.grey, // Color del borde exterior
                              ),
                            ),
                          ),
                          overlayColor: MaterialStateProperty.all(
                            Colors.white
                                .withOpacity(0.2), // Color de superposición
                          ),
                        ),
                        onPressed: () {},
                        child: SizedBox(
                          width: 100,
                          height: 100,
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(0),
                                child: SizedBox(
                                  height: 56,
                                  child:
                                      Image.asset('assets/img/MesaColor.jpg'),
                                ),
                              ),
                              Text(
                                "Mesas",
                                style: TextStyle(
                                  color: Color.fromRGBO(1, 46, 103, 1),
                                ),
                                textAlign: TextAlign.center,
                              ),
                              Text(
                                "Agregue, modifique o elimine mesas",
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 10,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                // Sección Menús //
                Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.white),
                          shape: MaterialStateProperty.all(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                              side: BorderSide(
                                width: 0.5,
                                color: Colors.grey, // Color del borde exterior
                              ),
                            ),
                          ),
                          overlayColor: MaterialStateProperty.all(
                            Colors.white
                                .withOpacity(0.2), // Color de superposición
                          ),
                        ),
                        onPressed: () {},
                        child: SizedBox(
                          width: 100,
                          height: 100,
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: SizedBox(
                                  height: 46,
                                  child:
                                      Image.asset('assets/img/MenuColor.jpg'),
                                ),
                              ),
                              Text(
                                "Menús",
                                style: TextStyle(
                                  color: Color.fromRGBO(1, 46, 103, 1),
                                ),
                                textAlign: TextAlign.center,
                              ),
                              Text(
                                "Agregue, modifique o elimine menús",
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 10,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Sección Pedidos //
                Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.white),
                          shape: MaterialStateProperty.all(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                              side: BorderSide(
                                width: 0.5,
                                color: Colors.grey, // Color del borde exterior
                              ),
                            ),
                          ),
                          overlayColor: MaterialStateProperty.all(
                            Colors.white
                                .withOpacity(0.2), // Color de superposición
                          ),
                        ),
                        onPressed: () {},
                        child: SizedBox(
                          width: 100,
                          height: 100,
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: SizedBox(
                                  height: 48,
                                  child: Image.asset(
                                      'assets/img/PedidosColor.jpg'),
                                ),
                              ),
                              Text(
                                "Pedidos",
                                style: TextStyle(
                                  color: Color.fromRGBO(1, 46, 103, 1),
                                ),
                                textAlign: TextAlign.center,
                              ),
                              Text(
                                "Consulte los pedidos realizados por mesa",
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 9,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                // Sección Ventas //
                Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.white),
                          shape: MaterialStateProperty.all(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                              side: BorderSide(
                                width: 0.5,
                                color: Colors.grey, // Color del borde exterior
                              ),
                            ),
                          ),
                          overlayColor: MaterialStateProperty.all(
                            Colors.white
                                .withOpacity(0.2), // Color de superposición
                          ),
                        ),
                        onPressed: () {},
                        child: SizedBox(
                          width: 100,
                          height: 100,
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(3.0),
                                child: SizedBox(
                                  height: 50,
                                  child:
                                      Image.asset('assets/img/VentasColor.jpg'),
                                ),
                              ),
                              Text(
                                "Ventas",
                                style: TextStyle(
                                  color: Color.fromRGBO(1, 46, 103, 1),
                                ),
                                textAlign: TextAlign.center,
                              ),
                              Text(
                                "Consulte las ventas realizadas",
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 10,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Sección Trabajadores //
                Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.white),
                          shape: MaterialStateProperty.all(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                              side: BorderSide(
                                width: 0.5,
                                color: Colors.grey, // Color del borde exterior
                              ),
                            ),
                          ),
                          overlayColor: MaterialStateProperty.all(
                            Colors.white
                                .withOpacity(0.2), // Color de superposición
                          ),
                        ),
                        onPressed: () {},
                        child: SizedBox(
                          width: 100,
                          height: 100,
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(6.0),
                                child: SizedBox(
                                  height: 46,
                                  child: Image.asset(
                                      'assets/img/TrabajadoresColor.jpg'),
                                ),
                              ),
                              Text(
                                "Trabajadores",
                                style: TextStyle(
                                  color: Color.fromRGBO(1, 46, 103, 1),
                                ),
                                textAlign: TextAlign.center,
                              ),
                              Text(
                                "Consulte el personal de la empresa",
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 8.9,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                // Sección Informes //
                Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.white),
                          shape: MaterialStateProperty.all(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                              side: BorderSide(
                                width: 0.5,
                                color: Colors.grey, // Color del borde exterior
                              ),
                            ),
                          ),
                          overlayColor: MaterialStateProperty.all(
                            Colors.white
                                .withOpacity(0.2), // Color de superposición
                          ),
                        ),
                        onPressed: () {},
                        child: SizedBox(
                          width: 100,
                          height: 100,
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(6.0),
                                child: SizedBox(
                                  height: 47,
                                  child: Image.asset(
                                      'assets/img/InformesColor.jpg'),
                                ),
                              ),
                              Text(
                                "Informes",
                                style: TextStyle(
                                  color: Color.fromRGBO(1, 46, 103, 1),
                                ),
                                textAlign: TextAlign.center,
                              ),
                              Text(
                                "Consulte las estadisticas de la empresa",
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 8.9,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Sección Proveedores //
                Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.white),
                          shape: MaterialStateProperty.all(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                              side: BorderSide(
                                width: 0.5,
                                color: Colors.grey, // Color del borde exterior
                              ),
                            ),
                          ),
                          overlayColor: MaterialStateProperty.all(
                            Colors.white
                                .withOpacity(0.2), // Color de superposición
                          ),
                        ),
                        onPressed: () {},
                        child: SizedBox(
                          width: 100,
                          height: 100,
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(3.0),
                                child: SizedBox(
                                  height: 50,
                                  child: Image.asset(
                                      'assets/img/ProveedoresColor.jpg'),
                                ),
                              ),
                              Text(
                                "Proveedores",
                                style: TextStyle(
                                  color: Color.fromRGBO(1, 46, 103, 1),
                                ),
                                textAlign: TextAlign.center,
                              ),
                              Text(
                                "Consulte los proveedores actuales",
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 10,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                // Sección Inventario //
                Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.white),
                          shape: MaterialStateProperty.all(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                              side: BorderSide(
                                width: 0.5,
                                color: Colors.grey, // Color del borde exterior
                              ),
                            ),
                          ),
                          overlayColor: MaterialStateProperty.all(
                            Colors.white
                                .withOpacity(0.2), // Color de superposición
                          ),
                        ),
                        onPressed: () {},
                        child: SizedBox(
                          width: 100,
                          height: 100,
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(3.0),
                                child: SizedBox(
                                  height: 50,
                                  child: Image.asset(
                                      'assets/img/InventarioColor.jpg'),
                                ),
                              ),
                              Text(
                                "Inventario",
                                style: TextStyle(
                                  color: Color.fromRGBO(1, 46, 103, 1),
                                ),
                                textAlign: TextAlign.center,
                              ),
                              Text(
                                "Consulte el stock disponible",
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 10,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
