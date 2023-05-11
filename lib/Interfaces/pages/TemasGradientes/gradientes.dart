import 'package:flutter/material.dart';

class Gradientes extends StatelessWidget {
  const Gradientes({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text(
            "GRADIENTE",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            "Un gradiente es una serie de flujos de efectivos o anualidades que pueden representar ingresos o egresos de efectivo, lo cual pueden aumentar o diminuir con relacion a la anualidad o flujo de caja anterior, en una cantidad constante en unidades monetarias o en porcentajes.",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 20,
            ),
          )
        ],
      )
    );
  }
}
