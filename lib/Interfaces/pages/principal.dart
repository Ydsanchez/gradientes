import 'package:flutter/material.dart';
import 'package:gradientes/Interfaces/pages/TemasGradientes/gradiente_aritmetico_o_lineal.dart';
import 'package:gradientes/Interfaces/pages/TemasGradientes/gradiente_geometrico_exponencial.dart';
import 'package:gradientes/Interfaces/pages/TemasGradientes/gradiente_lineal_decreciente.dart';
import 'package:gradientes/Interfaces/pages/bienvenido.dart';

import '../../Widgets/cajondecabecera.dart';
import 'TemasGradientes/gradiente_aritmetico_anticipada.dart';
import 'TemasGradientes/gradientes.dart';

class Bienvenidos extends StatefulWidget {
  const Bienvenidos({super.key});

  @override
  State<Bienvenidos> createState() => _BienvenidosState();
}

class _BienvenidosState extends State<Bienvenidos> {
  var currentPage = DrawerSections.BIENVENIDO;

  @override
  Widget build(BuildContext context) {
    var container;
    if (currentPage == DrawerSections.BIENVENIDO) {
      container = Introduccion();
    } else if (currentPage == DrawerSections.GRADIENTES) {
      container = Gradientes();
    } else if (currentPage == DrawerSections.GRADIENTES_ARITMETICO_O_LINEAL) {
      container = GradientesAritmeticosLineal();
    } else if (currentPage == DrawerSections.GRADIENTES_ARITMETICO_ANTICIPADO) {
      container = GradientesAritmeticoAnticipada();
    } else if (currentPage == DrawerSections.GRADIENTES_LINEAL_DECRECIENTE) {
      container = GradientesLinealDecreciente();
    } else if (currentPage ==
        DrawerSections.GRADIENTES_GEOMETRICO_EXPONENCIAL) {
      container = GradienteGeometricoExponencial();
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
          MenuItem(1, "BIENCENIDOS", Icons.book,
              currentPage == DrawerSections.BIENVENIDO ? true : false),
          MenuItem(2, "GRADIENTES", Icons.book,
              currentPage == DrawerSections.GRADIENTES ? true : false),
          MenuItem(
              3,
              "GRADIENTE ARITMETICO O LINEAL",
              Icons.book,
              currentPage == DrawerSections.GRADIENTES_ARITMETICO_O_LINEAL
                  ? true
                  : false),
          MenuItem(
              4,
              "GRADIENTE ARITMETICO ANTICIPADO",
              Icons.book,
              currentPage == DrawerSections.GRADIENTES_ARITMETICO_ANTICIPADO
                  ? true
                  : false),
          MenuItem(
              5,
              "GRADIENTE LINEAL DECRECIENTE",
              Icons.book,
              currentPage == DrawerSections.GRADIENTES_LINEAL_DECRECIENTE
                  ? true
                  : false),
          MenuItem(
              6,
              "GRADEINTE GEOMETRICO EXPONENCIAL",
              Icons.book,
              currentPage == DrawerSections.GRADIENTES_GEOMETRICO_EXPONENCIAL
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
              currentPage = DrawerSections.BIENVENIDO;
            } else if (id == 2) {
              currentPage = DrawerSections.GRADIENTES;
            } else if (id == 3) {
              currentPage = DrawerSections.GRADIENTES_ARITMETICO_O_LINEAL;
            } else if (id == 4) {
              currentPage = DrawerSections.GRADIENTES_ARITMETICO_ANTICIPADO;
            } else if (id == 5) {
              currentPage = DrawerSections.GRADIENTES_LINEAL_DECRECIENTE;
            } else if (id == 6) {
              currentPage = DrawerSections.GRADIENTES_GEOMETRICO_EXPONENCIAL;
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
  BIENVENIDO,
  GRADIENTES,
  GRADIENTES_ARITMETICO_O_LINEAL,
  GRADIENTES_ARITMETICO_ANTICIPADO,
  GRADIENTES_LINEAL_DECRECIENTE,
  GRADIENTES_GEOMETRICO_EXPONENCIAL,
}
