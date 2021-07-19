import 'package:flutter/material.dart';
import 'package:flutter_capital28_1/pages/NavegationUser.dart';

class NotificationUser extends StatefulWidget {


  @override
  _NotificationUserState createState() => _NotificationUserState();
}

class _NotificationUserState extends State<NotificationUser> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavigationUser(),
      appBar: AppBar(
        title: Text('Notifition'),
        centerTitle: true,
      ),
    );
  }
}