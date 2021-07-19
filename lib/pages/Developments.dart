import 'package:flutter/material.dart';

import 'NavigationDrawer.dart';

class Developments extends StatefulWidget {


  @override
  _DevelopmentsState createState() => _DevelopmentsState();
}

class _DevelopmentsState extends State<Developments> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavigationDrawerWidget(),
      appBar: AppBar(
        title: Text('Developments'),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
    );
  }
}