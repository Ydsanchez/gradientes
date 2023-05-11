import 'package:flutter/material.dart';
import 'package:gradientes/Interfaces/pages/gradientes.dart';
import 'package:gradientes/Interfaces/pages/gradientes_ascendentes.dart';
import 'package:gradientes/Interfaces/pages/introduccion.dart';

import '../../Widgets/cajondecabecera.dart';

class Bienvenidos extends StatefulWidget {
  const Bienvenidos({super.key});

  @override
  State<Bienvenidos> createState() => _BienvenidosState();
}

class _BienvenidosState extends State<Bienvenidos> {
  var currentPage = DrawerSections.INTRODUCCION;

  @override
  Widget build(BuildContext context) {
    var container;
    if (currentPage == DrawerSections.INTRODUCCION) {
      container = Introduccion();
    } else if (currentPage == DrawerSections.GRADIENTES) {
      container = Gradientes();
    } else if (currentPage == DrawerSections.GRADIENTES_ASENDENTES) {
      container = Gradientes_Ascendentes();
    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green[700],
        title: Text("Ingenieria Economica"),
      ),
      body: container,
      drawer: Drawer(
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                CajonDeCabecera(),
                ListaDeCabecera(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget ListaDeCabecera() {
    return Container(
      padding: EdgeInsets.only(top: 15),
      child: Column(
        children: [
          MenuItem(1, "INTRODUCCION", Icons.book,
              currentPage == DrawerSections.INTRODUCCION ? true : false),
          MenuItem(2, "GRADIENTE", Icons.book,
              currentPage == DrawerSections.GRADIENTES ? true : false),
          MenuItem(
              3,
              "GRADIENTE ASCENDENTE",
              Icons.book,
              currentPage == DrawerSections.GRADIENTES_ASENDENTES
                  ? true
                  : false)
        ],
      ),
    );
  }

  Widget MenuItem(int id, String title, IconData icon, bool selected) {
    return Material(
      color: selected ? Colors.grey[300] : Colors.transparent,
      child: InkWell(
        onTap: () {
          Navigator.pop(context);
          setState(() {
            if (id == 1) {
              currentPage = DrawerSections.INTRODUCCION;
            } else if (id == 2) {
              currentPage = DrawerSections.GRADIENTES;
            } else if (id == 3) {
              currentPage = DrawerSections.GRADIENTES_ASENDENTES;
            }
          });
        },
        child: Padding(
          padding: EdgeInsets.all(15.0),
          child: Row(
            children: [
              Expanded(
                child: Icon(
                  icon,
                  size: 20,
                  color: Colors.black,
                ),
              ),
              Expanded(
                flex: 3,
                child: Text(
                  title,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

enum DrawerSections {
  INTRODUCCION,
  GRADIENTES,
  GRADIENTES_ASENDENTES,
}
