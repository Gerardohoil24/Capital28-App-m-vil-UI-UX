import 'package:flutter/material.dart';

class Userpage extends StatefulWidget {
final String name;
final String urlImage;

const Userpage({
  Key? key, 
  required this.name,
  required this.urlImage,
}) : super(key: key);

  @override
  _UserpageState createState() => _UserpageState();
}

class _UserpageState extends State<Userpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('Gerardo'),
        centerTitle: true,
      ),
      body: Image.network(
        'https://www.hola.com/imagenes/estar-bien/20180523124493/el-beagle-es-la-raza-ideal-para-todas-las-casas/0-569-463/beagle-t.jpg',
        width: double.infinity,
        height: double.infinity,
        fit: BoxFit.cover,
      ),

    );
  }
}