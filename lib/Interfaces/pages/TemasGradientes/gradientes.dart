import 'package:flutter/material.dart';

class Gradientes extends StatelessWidget {
  const Gradientes({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      children: [
        SizedBox(height: 10),
        Text(
          "GRADIENTE",
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 30),
        Text(
          "Un gradiente es una serie de flujos de efectivos o anualidades que pueden representar ingresos o egresos de efectivo, lo cual pueden aumentar o diminuir con relacion a la anualidad o flujo de caja anterior, en una cantidad constante en unidades monetarias o en porcentajes.",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 20,
          ),
        ),
        SizedBox(height: 30),
        Text(
          "Para que una serie de flujos de caja o anualidades sea considerada un gradiente, deben ser periodicos y tener un ser igual a la cantidad de flujos de caja o anualidades.",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 20,
          ),
        ),
        SizedBox(height: 30),
        Text(
          "La diferencia entre una anualidad y gradiente es basicamente el valor de la anualidad o flujo de efectivo, lo que significa que en los gradientes sean estas vencidad y anticipadas.",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 20,
          ),
        ),
        SizedBox(height: 350),
        Text(
          "Yeferson Sanchez Villarreal",
          textAlign: TextAlign.center,
        )
      ],
    ));
  }
}
