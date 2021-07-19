import 'package:flutter/material.dart';

import 'NavigationDrawer.dart';

class Opportunities extends StatefulWidget {
  

  @override
  _OpportunitiesState createState() => _OpportunitiesState();
}

class _OpportunitiesState extends State<Opportunities> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavigationDrawerWidget(),
      appBar: AppBar(
        title: Text('Opportunities'),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
    );
  }
}