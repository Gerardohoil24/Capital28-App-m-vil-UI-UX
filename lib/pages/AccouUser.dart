import 'package:flutter/material.dart';
import 'package:flutter_capital28_1/pages/NavegationUser.dart';

class AccouUser extends StatefulWidget {


  @override
  _AccouUserState createState() => _AccouUserState();
}

class _AccouUserState extends State<AccouUser> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavigationUser(),
      appBar: AppBar(
        title: Text('Accou'),
        centerTitle: true,
      ),
    );
  }
}