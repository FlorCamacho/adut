import 'package:flutter/material.dart';
import 'package:usuario/PantallaPrincipal.dart';

class Historial extends StatelessWidget {
  const Historial({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Historial',
        debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            title: Text('Buscar'),
          ),
          drawer: MenuLateral()
      ),
    );
  }
}

