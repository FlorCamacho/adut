import 'package:flutter/material.dart';
import 'package:usuario/Historial.dart';
import 'package:usuario/Perfil.dart';

class PantallaPrincipal extends StatelessWidget {
  const PantallaPrincipal({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ADUT',
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



class Encabezado extends StatelessWidget {
  const Encabezado({super.key});

  @override
  Widget build(BuildContext context) {
    return DrawerHeader(
      child: Center(
        child: CircleAvatar(
          backgroundImage: AssetImage('logo_01.jpeg'),
          radius: 100,
        ),
      ),
      decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('verde.jpg'),
            fit: BoxFit.cover,
          )
      ),

    );
  }
}

class MenuLateral extends StatelessWidget {
  const MenuLateral({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          Encabezado(),

          ListTile(
            title: Text('Inicio'),
            leading: Icon(Icons.home, color: Colors.black),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => PantallaPrincipal())
              );
            },
          ),
          ListTile(
            title: Text('Perfil'),
            leading: Icon(Icons.person_outline_sharp, color: Colors.black),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => Perfil(key: Key('perfil')))
              );
            },
          ),
          ListTile(
            title: Text('Historial'),
            leading: Icon(Icons.history, color: Colors.black),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => Historial())
              );
            },
          ),
          ListTile(
            title: Text('Configuración'),
            leading: Icon(Icons.construction_sharp, color: Colors.black),
            onTap: () {
            },
          ),
          ListTile(
            title: Text('Administrar Usuarios'),
            leading: Icon(Icons.co_present_sharp, color: Colors.black),
            onTap: () {
            },
          ),
          ListTile(
            title: Text('Gestión Recursos'),
            leading: Icon(Icons.book, color: Colors.black),
            onTap: () {
            },
          ),
          ListTile(
            title: Text('Notificaciones'),
            leading: Icon(Icons.notifications, color: Colors.black),
            onTap: () {
            },
          ),
        ],
      ),
    );
  }
}
