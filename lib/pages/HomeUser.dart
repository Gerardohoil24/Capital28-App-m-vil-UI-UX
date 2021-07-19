import 'package:flutter/material.dart';

import 'NavegationUser.dart';

class HomeUser extends StatefulWidget {


  @override
  _HomeUserState createState() => _HomeUserState();
}

class _HomeUserState extends State<HomeUser> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavigationUser(),
      appBar: AppBar(
        title: Text('HomeUser'),
      ),
    );
  }
}