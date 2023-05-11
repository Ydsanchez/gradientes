import 'package:floating_action_bubble/floating_action_bubble.dart';
import 'package:flutter/material.dart';
import 'package:gradientes/Interfaces/pages/ValoresFuturosPresentes/valor_presente_gradiente_lineal_creciente.dart';

class GradienteAritmeticoLineal extends StatefulWidget {
  const GradienteAritmeticoLineal({super.key});

  @override
  State<GradienteAritmeticoLineal> createState() =>
      _GradienteAritmeticoLinealState();
}

class _GradienteAritmeticoLinealState extends State<GradienteAritmeticoLineal>{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          child: Column(children: [
        SizedBox(height: 10),
        Text(
          "GRADIENTE ARITMETICO O LINEAL",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 30),
        Text(
          "Un gradiente aritmetico es una anualidad o una serie de flujos de caja periodica, en la cual cada flujo es igual al anterior, incrementando o disminuido en un valor constante en unidades monetarias y se simboliza con la letra G y se denomina variacion constante",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 20,
          ),
        ),
        SizedBox(height: 30),
        Text(
          "Si G es positivo, se genera el gradiente aritmetico creciente.",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 20,
          ),
        ),
        SizedBox(height: 30),
        Text(
          "Si G es negativo, se genera el gradiente aritmetico decreciente.",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 20,
          ),
        ),
      ])),
    );
  }
}
