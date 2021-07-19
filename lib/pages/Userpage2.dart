import 'package:flutter/material.dart';

class Userpage2 extends StatefulWidget {
final String name;
final String urlImage;

const Userpage2({
  Key? key, 
  required this.name,
  required this.urlImage,
}) : super(key: key);

  @override
  _Userpage2State createState() => _Userpage2State();
}

class _Userpage2State extends State<Userpage2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('Ernesto'),
        centerTitle: true,
      ),
      body: Image.network(
        'https://3.bp.blogspot.com/-BV6D--B0rZI/W-W7j461CyI/AAAAAAAABSQ/7Dq84VxYcOQX9z_o8Bdsa-GxfuEW_WgnQCLcBGAs/s640/comprar-bulldog-ingl%25C3%25A9s.jpg',
        width: double.infinity,
        height: double.infinity,
        fit: BoxFit.cover,
      ),

    );
  }
}