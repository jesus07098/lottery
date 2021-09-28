import 'dart:ui';

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text('Drawer Header'),
            ),
            ListTile(
              title: const Text('Item 1'),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),
            ListTile(
              title: const Text('Item 2'),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),
          ],
        ),
      ),
      appBar: AppBar(
        actions: [
          Padding(
            child: Icon(Icons.message),
            padding: EdgeInsets.symmetric(horizontal: 12),
          )
        ],
        title: Text('NombreBanca'),
        backgroundColor: Colors.blue[900],
        elevation: 0.0,
      ),
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                width: double.infinity,
                height: size.height * 0.195,
                decoration: BoxDecoration(
                    color: Colors.blue[900],
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(250),
                        bottomRight: Radius.circular(250))),
              ),
            ],
          ),
          Positioned(
            width: size.width,
            height: size.height,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 30, bottom: 40),
                  child: Container(
                    width: size.width * 0.9,
                    height: 105,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.white,
                              spreadRadius: 8,
                              offset: Offset(0, -4))
                        ],
                        color: Colors.blue[900]),
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 14),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('NombreVendedor',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w800)),
                              SizedBox(height: 6.0),
                              Text(
                                'street of America',
                                style: TextStyle(color: Colors.white),
                              ),
                              SizedBox(height: 6.0),
                              Text(
                                '080558548-5154',
                                style: TextStyle(color: Colors.white),
                              ),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Icon(
                                Icons.assignment_ind,
                                color: Colors.white,
                                size: 30,
                              ),
                              SizedBox(height: 6.0),
                              Text(
                                'street of America',
                                style: TextStyle(color: Colors.white),
                              ),
                              SizedBox(height: 4.0),
                              Text(
                                'RD 548.00',
                                style: TextStyle(
                                    fontSize: 15.0,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GridView(
                    children: [
                      generatedIcon('Vender', Icons.ac_unit_rounded),
                      generatedIcon('Configuración', Icons.ac_unit_rounded),
                      generatedIcon('Pagar', Icons.ac_unit_rounded),
                      generatedIcon('Combinar', Icons.ac_unit_rounded),
                      generatedIcon('Recargar', Icons.ac_unit_rounded),
                      generatedIcon('Chat', Icons.ac_unit_rounded),
                      generatedIcon('Anular', Icons.ac_unit_rounded),
                      generatedIcon('Ticket', Icons.ac_unit_rounded),
                      generatedIcon('Notificaciones', Icons.ac_unit_rounded),
                      generatedIcon('Sorteos', Icons.ac_unit_rounded),
                      generatedIcon('Cuadres', Icons.ac_unit_rounded),
                    ],
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        mainAxisSpacing: 0,
                        crossAxisSpacing: 0,
                        childAspectRatio: 1.1),
                  ),
                )
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: _Navigation(context),
    );
  }
}

Widget _Navigation(BuildContext context) {
  //final navegationModel = Provider.of<_NavegacionModel>(context);

  return BottomNavigationBar(
    currentIndex: 0,
    onTap: (valor) => null,
    items: <BottomNavigationBarItem>[
      BottomNavigationBarItem(
          icon: Icon(
            Icons.home,
            size: 30,
          ),
          title: Text('Home')),
      BottomNavigationBarItem(
          icon: Icon(
            Icons.point_of_sale_sharp,
            size: 30,
          ),
          title: Text('Vender')),
      BottomNavigationBarItem(
          icon: Icon(
            Icons.confirmation_number_rounded,
            size: 30,
          ),
          title: Text('Ver Ticket'))
    ],
  );
}

Widget generatedIcon(String name, IconData icon) {
  return Column(
    children: [
      CircleAvatar(
        backgroundColor: Colors.blue[900],
        minRadius: 40,
        child: Icon(icon, size: 40),
      ),
      SizedBox(
        height: 4,
      ),
      Text(name, style: TextStyle(fontSize: 16)),
    ],
  );
}

Widget listItemDrawer(String listOption, IconData icon) {
  return Drawer(
    child: ListView(
      // Important: Remove any padding from the ListView.
      padding: EdgeInsets.zero,
      children: [
        const DrawerHeader(
          decoration: BoxDecoration(
            color: Colors.blue,
          ),
          child: Text('Drawer Header'),
        ),
        ListTile(
          title: const Text('Item 1'),
          onTap: () {
            // Update the state of the app.
            // ...
          },
        ),
      ],
    ),
  );
}
