import 'package:floating_action_bubble/floating_action_bubble.dart';
import 'package:flutter/material.dart';
import 'package:gradientes/Interfaces/pages/BuscarInsisos/BuscarA.dart';
import 'package:gradientes/Interfaces/pages/BuscarInsisos/BuscarG.dart';
import 'package:gradientes/Interfaces/pages/BuscarInsisos/BuscarI.dart';
import 'package:gradientes/Interfaces/pages/BuscarInsisos/BuscarN.dart';
import 'package:gradientes/Interfaces/pages/BuscarInsisos/BuscarPtg.dart';
import 'package:gradientes/Interfaces/pages/TemasGradientes/gradiente_aritmetico_o_lineal.dart';
import 'package:gradientes/Interfaces/pages/TemasGradientes/gradiente_geometrico_exponencial.dart';
import 'package:gradientes/Interfaces/pages/TemasGradientes/gradiente_lineal_decreciente.dart';
import 'package:gradientes/Interfaces/pages/bienvenido.dart';

import '../../Widgets/cajondecabecera.dart';
import 'TemasGradientes/gradiente_aritmetico_anticipada.dart';
import 'TemasGradientes/gradientes.dart';
import 'ValoresFuturosPresentes/valor_presente_gradiente_lineal_creciente.dart';

class Bienvenidos extends StatefulWidget {
  const Bienvenidos({super.key});

  @override
  State<Bienvenidos> createState() => _BienvenidosState();
}

class _BienvenidosState extends State<Bienvenidos>
    with SingleTickerProviderStateMixin {
  Animation<double>? _animation;
  AnimationController? _animationController;
  var currentPage = DrawerSections.BIENVENIDO;

  @override
  void initState() {
    _animationController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 260));

    final curvedAnimation =
        CurvedAnimation(parent: _animationController!, curve: Curves.easeInOut);
    _animation = Tween<double>(begin: 0, end: 1).animate(curvedAnimation);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var container;
    if (currentPage == DrawerSections.BIENVENIDO) {
      container = Introduccion();
    } else if (currentPage == DrawerSections.GRADIENTES) {
      container = Gradientes();
    } else if (currentPage == DrawerSections.GRADIENTES_ARITMETICO_O_LINEAL) {
      container = GradienteAritmeticoLineal();
    } else if (currentPage ==
        DrawerSections.VALOR_PRESENTE_GRADIENTE_LINEAL_CRECIENTE) {
      container = ValorPresenteGradienteLinealCreciente();
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
      floatingActionButton: BotonFlotante(
          animation: _animation, animationController: _animationController),
    );
  }

  Widget ListaDeCabecera() {
    return Container(
      padding: EdgeInsets.only(top: 15),
      child: Column(
        children: [
          MenuItem(1, "BIENVENIDOS", Icons.book,
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
              "VALOR PRESENTE GRADIENTE LINEAL CRECIENTE",
              Icons.book,
              currentPage ==
                      DrawerSections.VALOR_PRESENTE_GRADIENTE_LINEAL_CRECIENTE
                  ? true
                  : false),
          MenuItem(
              5,
              "GRADIENTE ARITMETICO ANTICIPADO",
              Icons.book,
              currentPage == DrawerSections.GRADIENTES_ARITMETICO_ANTICIPADO
                  ? true
                  : false),
          MenuItem(
              6,
              "GRADIENTE LINEAL DECRECIENTE",
              Icons.book,
              currentPage == DrawerSections.GRADIENTES_LINEAL_DECRECIENTE
                  ? true
                  : false),
          MenuItem(
              7,
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
              currentPage =
                  DrawerSections.VALOR_PRESENTE_GRADIENTE_LINEAL_CRECIENTE;
            } else if (id == 5) {
              currentPage = DrawerSections.GRADIENTES_ARITMETICO_ANTICIPADO;
            } else if (id == 6) {
              currentPage = DrawerSections.GRADIENTES_LINEAL_DECRECIENTE;
            } else if (id == 7) {
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

class BotonFlotante extends StatelessWidget {
  const BotonFlotante({
    super.key,
    required AnimationController? animationController,
    required Animation<double>? animation,
  })  : _animationController = animationController,
        _animation = animation;

  final AnimationController? _animationController;
  final Animation<double>? _animation;

  @override
  Widget build(BuildContext context) {
    return FloatingActionBubble(
        items: <Bubble>[
          Bubble(
            icon: Icons.book,
            iconColor: Colors.black,
            title: "Buscar Ptg",
            titleStyle: TextStyle(fontSize: 16, color: Colors.white),
            bubbleColor: Colors.green,
            onPress: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => BuscarPtg()));
              _animationController!.reverse();
            },
          ),
          Bubble(
            icon: Icons.book,
            iconColor: Colors.black,
            title: "Buscar a",
            titleStyle: TextStyle(fontSize: 16, color: Colors.white),
            bubbleColor: Colors.green,
            onPress: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => BuscarA()));
              _animationController!.reverse();
            },
          ),
          Bubble(
            icon: Icons.book,
            iconColor: Colors.black,
            title: "Buscar n",
            titleStyle: TextStyle(fontSize: 16, color: Colors.white),
            bubbleColor: Colors.green,
            onPress: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => BuscarN()));
              _animationController!.reverse();
            },
          ),
          Bubble(
            icon: Icons.book,
            iconColor: Colors.black,
            title: "Buscar g",
            titleStyle: TextStyle(fontSize: 16, color: Colors.white),
            bubbleColor: Colors.green,
            onPress: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => BuscarG()));
              _animationController!.reverse();
            },
          ),
          Bubble(
            icon: Icons.book,
            iconColor: Colors.black,
            title: "Buscar i",
            titleStyle: TextStyle(fontSize: 16, color: Colors.white),
            bubbleColor: Colors.green,
            onPress: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => BuscarI()));
              _animationController!.reverse();
            },
          )
        ],
        onPress: () => _animationController!.isCompleted
            ? _animationController!.reverse()
            : _animationController!.forward(),
        iconData: Icons.menu,
        iconColor: Colors.black,
        backGroundColor: Colors.green,
        animation: _animation!);
  }
}

enum DrawerSections {
  BIENVENIDO,
  GRADIENTES,
  GRADIENTES_ARITMETICO_O_LINEAL,
  VALOR_PRESENTE_GRADIENTE_LINEAL_CRECIENTE,
  GRADIENTES_ARITMETICO_ANTICIPADO,
  GRADIENTES_LINEAL_DECRECIENTE,
  GRADIENTES_GEOMETRICO_EXPONENCIAL,
}
