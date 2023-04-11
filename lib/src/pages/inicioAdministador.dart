import 'package:flutter/material.dart';

class inicioAdministrador extends StatelessWidget {
  const inicioAdministrador({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      // AppBar //
      appBar: AppBar(
        elevation: 0.0,
        title: Text(
          "Menú principal",
          style: TextStyle(
            fontFamily: 'Yesteryear',
            fontSize: 35,
          ),
        ),
        centerTitle:
            true, // Establecer esta propiedad en true para centrar el título
        backgroundColor: Color.fromRGBO(1, 46, 103, 1),
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
                  color: Color.fromRGBO(1, 46, 103, 1),
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
                height: 38,
                child: Image.asset("assets/img/IconoMenuPrincipal.jpg"),
              ),
              title: Text(
                'Menú principal',
                style: TextStyle(),
              ),
              onTap: () {},
            ),
            ListTile(
              leading: SizedBox(
                height: 38,
                child: Image.asset("assets/img/IconoMesas.jpg"),
              ),
              title: Text('Mesas'),
              onTap: () {},
            ),
            ListTile(
              leading: SizedBox(
                height: 38,
                child: Image.asset("assets/img/IconoMenu.jpg"),
              ),
              title: Text('Menús'),
              onTap: () {},
            ),
            ListTile(
              leading: SizedBox(
                height: 38,
                child: Image.asset("assets/img/IconoPedidos.jpg"),
              ),
              title: Text('Pedidos'),
              onTap: () {},
            ),
            ListTile(
              leading: SizedBox(
                height: 38,
                child: Image.asset("assets/img/IconoVentas.jpg"),
              ),
              title: Text('Ventas'),
              onTap: () {},
            ),
            ListTile(
              leading: SizedBox(
                height: 38,
                child: Image.asset("assets/img/IconoTrabajadores.jpg"),
              ),
              title: Text('Trabajadores'),
              onTap: () {},
            ),
            ListTile(
              leading: SizedBox(
                height: 38,
                child: Image.asset("assets/img/IconoInformes.jpg"),
              ),
              title: Text('Informes'),
              onTap: () {},
            ),
            ListTile(
              leading: SizedBox(
                height: 38,
                child: Image.asset("assets/img/IconoProveedores.jpg"),
              ),
              title: Text('Proveedores'),
              onTap: () {},
            ),
            ListTile(
              leading: SizedBox(
                height: 38,
                child: Image.asset("assets/img/IconoInventario.jpg"),
              ),
              title: Text('Inventario'),
              onTap: () {},
            ),
            ListTile(
              leading: SizedBox(
                height: 38,
                child: Image.asset("assets/img/IconoCerrarSesion.jpg"),
              ),
              title: Text('Cerrar sesión'),
              onTap: () {},
            ),
          ],
        ),
      ),
      body: Container(
        color: Colors.white,
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
                      padding: EdgeInsets.symmetric(horizontal: 5),
                      child: ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                              Color.fromRGBO(245, 248, 255, 1)),
                          shape: MaterialStateProperty.all(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                              side: BorderSide(
                                width: 0,
                                color: Color.fromRGBO(193, 211, 255,
                                    1), // Color del borde exterior
                              ),
                            ),
                          ),
                          overlayColor: MaterialStateProperty.all(
                            Color.fromRGBO(245, 248, 255, 1)
                                .withOpacity(0.2), // Color de superposición
                          ),
                          elevation: MaterialStateProperty.all(
                              0.0), // Quítale las sombras
                        ),
                        onPressed: () {},
                        child: SizedBox(
                          width: 124,
                          height: 110,
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(0),
                                child: SizedBox(
                                  height: 60,
                                  child:
                                      Image.asset('assets/img/MesasColor.jpg'),
                                ),
                              ),
                              Text(
                                "Mesas",
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Color.fromRGBO(1, 46, 103, 1),
                                ),
                                textAlign: TextAlign.center,
                              ),
                              Text(
                                "Agregue, modifique o elimine mesas",
                                style: TextStyle(
                                  color: Color.fromRGBO(57, 57, 57, 1),
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
                      padding: EdgeInsets.symmetric(horizontal: 5),
                      child: ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                              Color.fromRGBO(245, 248, 255, 1)),
                          shape: MaterialStateProperty.all(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                              side: BorderSide(
                                width: 0,
                                color: Color.fromRGBO(193, 211, 255,
                                    1), // Color del borde exterior
                              ),
                            ),
                          ),
                          overlayColor: MaterialStateProperty.all(
                            Color.fromRGBO(245, 248, 255, 1)
                                .withOpacity(0.2), // Color de superposición
                          ),
                          elevation: MaterialStateProperty.all(
                              0.0), // Quítale las sombras
                        ),
                        onPressed: () {},
                        child: SizedBox(
                          width: 124,
                          height: 110,
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(0),
                                child: SizedBox(
                                  height: 60,
                                  child:
                                      Image.asset('assets/img/MenuColor.jpg'),
                                ),
                              ),
                              Text(
                                "Menús",
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Color.fromRGBO(1, 46, 103, 1),
                                ),
                                textAlign: TextAlign.center,
                              ),
                              Text(
                                "Agregue, modifique o elimine menús",
                                style: TextStyle(
                                  color: Color.fromRGBO(57, 57, 57, 1),
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
                      padding:
                          EdgeInsets.symmetric(horizontal: 5, vertical: 10),
                      child: ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                              Color.fromRGBO(245, 248, 255, 1)),
                          shape: MaterialStateProperty.all(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                              side: BorderSide(
                                width: 0,
                                color: Color.fromRGBO(193, 211, 255,
                                    1), // Color del borde exterior
                              ),
                            ),
                          ),
                          overlayColor: MaterialStateProperty.all(
                            Color.fromRGBO(245, 248, 255, 1)
                                .withOpacity(0.2), // Color de superposición
                          ),
                          elevation: MaterialStateProperty.all(
                              0.0), // Quítale las sombras
                        ),
                        onPressed: () {},
                        child: SizedBox(
                          width: 124,
                          height: 110,
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(1),
                                child: SizedBox(
                                  height: 60,
                                  child: Image.asset(
                                      'assets/img/PedidosColor.jpg'),
                                ),
                              ),
                              Text(
                                "Pedidos",
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Color.fromRGBO(1, 46, 103, 1),
                                ),
                                textAlign: TextAlign.center,
                              ),
                              Text(
                                "Consulte los pedidos realizados por mesa",
                                style: TextStyle(
                                  color: Color.fromRGBO(57, 57, 57, 1),
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
                // Sección Ventas //
                Column(
                  children: [
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 5, vertical: 10),
                      child: ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                              Color.fromRGBO(245, 248, 255, 1)),
                          shape: MaterialStateProperty.all(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                              side: BorderSide(
                                width: 0,
                                color: Color.fromRGBO(193, 211, 255,
                                    1), // Color del borde exterior
                              ),
                            ),
                          ),
                          overlayColor: MaterialStateProperty.all(
                            Color.fromRGBO(245, 248, 255, 1)
                                .withOpacity(0.2), // Color de superposición
                          ),
                          elevation: MaterialStateProperty.all(
                              0.0), // Quítale las sombras
                        ),
                        onPressed: () {},
                        child: SizedBox(
                          width: 124,
                          height: 110,
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(1),
                                child: SizedBox(
                                  height: 60,
                                  child:
                                      Image.asset('assets/img/VentasColor.jpg'),
                                ),
                              ),
                              Text(
                                "Ventas",
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Color.fromRGBO(1, 46, 103, 1),
                                ),
                                textAlign: TextAlign.center,
                              ),
                              Text(
                                "Consulte las ventas realizadas",
                                style: TextStyle(
                                  color: Color.fromRGBO(57, 57, 57, 1),
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
                      padding: EdgeInsets.symmetric(horizontal: 5),
                      child: ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                              Color.fromRGBO(245, 248, 255, 1)),
                          shape: MaterialStateProperty.all(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                              side: BorderSide(
                                width: 0,
                                color: Color.fromRGBO(193, 211, 255,
                                    1), // Color del borde exterior
                              ),
                            ),
                          ),
                          overlayColor: MaterialStateProperty.all(
                            Color.fromRGBO(245, 248, 255, 1)
                                .withOpacity(0.2), // Color de superposición
                          ),
                          elevation: MaterialStateProperty.all(
                              0.0), // Quítale las sombras
                        ),
                        onPressed: () {},
                        child: SizedBox(
                          width: 124,
                          height: 110,
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(1),
                                child: SizedBox(
                                  height: 60,
                                  child: Image.asset(
                                      'assets/img/TrabajadoresColor.jpg'),
                                ),
                              ),
                              Text(
                                "Trabajadores",
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Color.fromRGBO(1, 46, 103, 1),
                                ),
                                textAlign: TextAlign.center,
                              ),
                              Text(
                                "Consulte el personal de la empresa",
                                style: TextStyle(
                                  color: Color.fromRGBO(57, 57, 57, 1),
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
                // Sección Informes //
                Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 5),
                      child: ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                              Color.fromRGBO(245, 248, 255, 1)),
                          shape: MaterialStateProperty.all(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                              side: BorderSide(
                                width: 0,
                                color: Color.fromRGBO(193, 211, 255,
                                    1), // Color del borde exterior
                              ),
                            ),
                          ),
                          overlayColor: MaterialStateProperty.all(
                            Color.fromRGBO(245, 248, 255, 1)
                                .withOpacity(0.2), // Color de superposición
                          ),
                          elevation: MaterialStateProperty.all(
                              0.0), // Quítale las sombras
                        ),
                        onPressed: () {},
                        child: SizedBox(
                          width: 124,
                          height: 110,
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(1),
                                child: SizedBox(
                                  height: 60,
                                  child: Image.asset(
                                      'assets/img/InformesColor.jpg'),
                                ),
                              ),
                              Text(
                                "Informes",
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Color.fromRGBO(1, 46, 103, 1),
                                ),
                                textAlign: TextAlign.center,
                              ),
                              Text(
                                "Consulte las estadisticas de la empresa",
                                style: TextStyle(
                                  color: Color.fromRGBO(57, 57, 57, 1),
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
                // Sección Proveedores //
                Column(
                  children: [
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 5, vertical: 10),
                      child: ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                              Color.fromRGBO(245, 248, 255, 1)),
                          shape: MaterialStateProperty.all(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                              side: BorderSide(
                                width: 0,
                                color: Color.fromRGBO(193, 211, 255,
                                    1), // Color del borde exterior
                              ),
                            ),
                          ),
                          overlayColor: MaterialStateProperty.all(
                            Color.fromRGBO(245, 248, 255, 1)
                                .withOpacity(0.2), // Color de superposición
                          ),
                          elevation: MaterialStateProperty.all(
                              0.0), // Quítale las sombras
                        ),
                        onPressed: () {},
                        child: SizedBox(
                          width: 124,
                          height: 110,
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(2),
                                child: SizedBox(
                                  height: 60,
                                  child: Image.asset(
                                      'assets/img/ProveedoresColor.jpg'),
                                ),
                              ),
                              Text(
                                "Proveedores",
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Color.fromRGBO(1, 46, 103, 1),
                                ),
                                textAlign: TextAlign.center,
                              ),
                              Text(
                                "Consulte los proveedores actuales",
                                style: TextStyle(
                                  color: Color.fromRGBO(57, 57, 57, 1),
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
                      padding:
                          EdgeInsets.symmetric(horizontal: 5, vertical: 10),
                      child: ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                              Color.fromRGBO(245, 248, 255, 1)),
                          shape: MaterialStateProperty.all(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                              side: BorderSide(
                                width: 0,
                                color: Color.fromRGBO(193, 211, 255,
                                    1), // Color del borde exterior
                              ),
                            ),
                          ),
                          overlayColor: MaterialStateProperty.all(
                            Color.fromRGBO(245, 248, 255, 1)
                                .withOpacity(0.2), // Color de superposición
                          ),
                          elevation: MaterialStateProperty.all(
                              0.0), // Quítale las sombras
                        ),
                        onPressed: () {},
                        child: SizedBox(
                          width: 124,
                          height: 110,
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(2),
                                child: SizedBox(
                                  height: 60,
                                  child: Image.asset(
                                      'assets/img/InventarioColor.jpg'),
                                ),
                              ),
                              Text(
                                "Inventario",
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Color.fromRGBO(1, 46, 103, 1),
                                ),
                                textAlign: TextAlign.center,
                              ),
                              Text(
                                "Consulte el stock disponible",
                                style: TextStyle(
                                  color: Color.fromRGBO(57, 57, 57, 1),
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
