import 'dart:io';
import 'package:flutter/material.dart';
import 'package:usuario/PantallaPrincipal.dart';
import 'package:image_picker/image_picker.dart';

class Perfil extends StatefulWidget {
  const Perfil({required Key key}) : super(key: key);

  @override
  _PerfilState createState() => _PerfilState();
}

class _PerfilState extends State<Perfil> {
  String imagen = 'logo_adut.jpeg';
  final ImagePicker _picker = ImagePicker();

  Future<void> cambiarImagen() async {
    final pickedFile = await _picker.pickImage(source: ImageSource.gallery);

    if (pickedFile != null) {
      setState(() {
        imagen = pickedFile.path;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Perfil',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Buscar'),
          backgroundColor: Colors.teal,
        ),
        // ... Resto del código
        body: Padding(
          padding: EdgeInsets.all(25),
          child: ListView(
            children: <Widget>[
              // ... Resto del código
              CircleAvatar(
                backgroundImage: FileImage(File(imagen)),
                radius: 100,
                child: ClipOval(
                  child: Image(
                    image: FileImage(File(imagen)),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Container(
                alignment: Alignment.center,
                padding: EdgeInsets.all(10),
                child: Text(
                  'Berenice López González',
                  style: TextStyle(fontSize: 20),
                ),
              ),
              TextButton(
                onPressed: cambiarImagen,
                child: Text('Cambiar imagen'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

