import 'package:flutter/material.dart';
import 'package:flutter_capital28_1/pages/Galery.dart';
import 'package:flutter_capital28_1/pages/home_admin.dart';
import 'package:flutter_capital28_1/pages/registro_page.dart';


import 'pages/login.dart';

void main () => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "My app",
      theme: ThemeData(
        fontFamily: '',
      ),
      initialRoute: Login.id,
      routes: {
        Login.id:(_)=> Login(),
      },

    );
  }
}

class Inicio extends StatelessWidget {
  const Inicio({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center()

    );
  }
}

