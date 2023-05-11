import 'package:flutter/material.dart';

class Introduccion extends StatelessWidget {
  const Introduccion({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "BIENVENIDOS",
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 30),
        Text(
          "En esta aplicacion aprendera sobre las gradientes lineales o aritmeticas, geometricas entre otras. Obtendra ejercicios y problemas para resolver inlcluida una calculadora por solucion",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 20,
          ),
        ),
      ],
    ),);
  }
}
