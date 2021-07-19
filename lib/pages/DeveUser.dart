import 'package:flutter/material.dart';
import 'package:flutter_capital28_1/pages/NavegationUser.dart';

class DeveUser extends StatefulWidget {


  @override
  _DeveUserState createState() => _DeveUserState();
}

class _DeveUserState extends State<DeveUser> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavigationUser(),
      appBar: AppBar(
        title: Text('DeveUser'),
        centerTitle: true,
      ),
    );
  }
}