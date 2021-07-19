import 'package:flutter/material.dart';

import 'NavigationDrawer.dart';

class AccountPage extends StatefulWidget {

  @override
  _AccountPageState createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavigationDrawerWidget(),
      appBar: AppBar(
        title: Text('AccountPage'),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
    );
  }
}