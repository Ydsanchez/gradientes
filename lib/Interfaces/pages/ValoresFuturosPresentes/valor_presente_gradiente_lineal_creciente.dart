import 'package:flutter/material.dart';

class ValorPresenteGradienteLinealCreciente extends StatefulWidget {
  const ValorPresenteGradienteLinealCreciente({super.key});

  @override
  State<ValorPresenteGradienteLinealCreciente> createState() =>
      _ValorPresenteGradienteLinealCrecienteState();
}

class _ValorPresenteGradienteLinealCrecienteState
    extends State<ValorPresenteGradienteLinealCreciente> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            SizedBox(height: 10),
            Text(
              "VALOR PRESENTE DE UN GRADIENTE ARITMETICO O LINEAL CRECIENTE",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 30),
            Text(
              "Es un valor ubicado en el periodo determinado, que resulta de sumar los valores presetnte de una serie de flujos de caja que aumenta cada periodo de una cantidad constante denomida gradiente (G).",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            SizedBox(height: 10),
            Image.asset("img/ValorPresenteGradienteLinealCreciente.PNG"), 
            SizedBox(height: 10),
            Text(
              "El valor A, seria la primera anualidad que estaria despues del valor 0 que en la anualidad es el valor presente; el valor A se lo denomina como la base de la serie gradiente lineal creciente.",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            SizedBox(height: 10),
            Text(
              "El punto 0 (cero) en un gradiente es el valor presente total de la serie gradiente aritmetica o lineal, el cual se calcula a travez de la formula:",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            SizedBox(height: 10),
            Image.asset("img/ValorPresenteGradienteLinealCrecienteEcucacion1.PNG"),      
            SizedBox(height: 10),
            Text(
              "Donde:",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            
            Text(
              "PA es el presente de la base o de la anualidad",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            
            Text(
              "PG es el presente del gradiente",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            
            Text(
              "G es el creciento o gradienteel cual se encuentra ubicado dos periodos despues de donde se localiza el cero de la serie gradiente lineal o aritmetica.",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
