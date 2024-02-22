import 'package:flutter/material.dart';
import 'package:usuario/PantallaPrincipal.dart';

void main() =>runApp(Ejercicio());

class Ejercicio extends StatelessWidget{

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title:'ADUT',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title:Text('Inicio de Sesión'),
          backgroundColor: Colors.teal,
        ),
        body:Padding (
          padding: EdgeInsets.all(35),
          child: ListView(
            children: <Widget>[
              CircleAvatar(
                backgroundImage: AssetImage('logo_adut.jpeg'),
                radius: 100,
              ),
              Container(
                alignment: Alignment.center,
                padding: EdgeInsets.all(10),
                child: Text('Iniciar sesión',
                  style: TextStyle(fontSize: 20),
                ),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Usuario'
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Contraseña'
                  ),
                ),
              ),
              TextButton(
                  onPressed: () {
                  },
                  child: Text('¿Olvidaste tu contraseña?')
              ),
              Ingresar(),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text('¿No tienes cuenta?'),
                  TextButton(
                    onPressed: () {

                    },
                    child: Text('Registrate',
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class Ingresar extends StatelessWidget {
  const Ingresar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
      child: ElevatedButton(
        child: Text('Ingresar'),
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => PantallaPrincipal())
          );
        },
      ),
    );
  }
}