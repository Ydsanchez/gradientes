import 'package:flutter/material.dart';
import 'package:gradientes/Interfaces/pages/principal.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Gradientes',
      theme: ThemeData(primarySwatch: Colors.blueGrey),
      home: const Bienvenidos(),
      debugShowCheckedModeBanner: false,
    );
  }
}
