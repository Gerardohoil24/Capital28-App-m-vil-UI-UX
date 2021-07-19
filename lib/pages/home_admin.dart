import 'package:flutter/material.dart';

import 'NavigationDrawer.dart';
class HomeAdmin extends StatefulWidget {
  static String id = 'home_admin';

  @override
   HomeadminState createState() =>  HomeadminState();

}

class  HomeadminState extends State <HomeAdmin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavigationDrawerWidget(),
      appBar: AppBar(
        title: Text('Home_Admin'),
      ),
    );
  }
}