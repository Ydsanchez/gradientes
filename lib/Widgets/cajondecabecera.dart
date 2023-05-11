import 'package:flutter/material.dart';

class CajonDeCabecera extends StatefulWidget {
  const CajonDeCabecera({super.key});

  @override
  State<CajonDeCabecera> createState() => _CajonDeCabeceraState();
}

class _CajonDeCabeceraState extends State<CajonDeCabecera> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green,
      width: double.infinity,
      height: 200,
      padding: EdgeInsets.only(top: 20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.only(bottom: 10),
            height: 70,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                    image: AssetImage('img/ingenieria-economica.jpg'))),
          ),
          Text(
            "Yeferson David Sanchez Villarreal",
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          Text(
            "ydsanchez@unicesar.edu.co",
            style: TextStyle(color: Colors.grey[200], fontSize: 14),
          ),
        ],
      ),
    );
  }
}
