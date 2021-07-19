import 'dart:js';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_capital28_1/pages/AccountPage.dart';
import 'package:flutter_capital28_1/pages/Developments.dart';
import 'package:flutter_capital28_1/pages/Galery.dart';
import 'package:flutter_capital28_1/pages/Opportunities.dart';
import 'package:flutter_capital28_1/pages/Userpage.dart';
import 'package:get/get.dart';

class NavigationDrawerWidget extends StatelessWidget{
  final padding = EdgeInsets.symmetric(horizontal: 20);
  @override
  Widget build(BuildContext context) {
    final name = 'Gerardo hoil';
    final email = 'Example@gmail.com';
    final urlImage = 'https://www.hola.com/imagenes/estar-bien/20180523124493/el-beagle-es-la-raza-ideal-para-todas-las-casas/0-569-463/beagle-t.jpg';
    return Drawer(
      child: Material(
        color: Color.fromRGBO(50, 75, 205, 1),
        child: ListView(
          
          children: <Widget> [
            buildHeader(
              urlImage: urlImage,
              name: name,
              email: email,
              onClicked: () => Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => Userpage(
          name: name,
          urlImage: urlImage,
          
        )
        )),
            ),
            const SizedBox(height: 48,),
            buildMenuItem(
              text: 'Pagina principal',
              icon: Icons.people,
              onClicked: () => selectedItem(context, 0),
            ),
              const SizedBox(height: 16,),
            buildMenuItem(
              text: 'Mi cuenta',
              icon: Icons.favorite_border,
              onClicked: () => selectedItem(context, 1),
            ),
              const SizedBox(height: 16,),
            buildMenuItem(
              text: 'Oportunidades',
              icon: Icons.workspaces_outline,
              onClicked: () => selectedItem(context, 2),
            ),
            const SizedBox(height: 16,),
            buildMenuItem(
              text: 'Mis desarrollos',
              icon: Icons.update,
              onClicked: () => selectedItem(context, 3),
            ),

            const SizedBox(height: 24,),
            Divider(color: Colors.white70,),
            const SizedBox(height: 24,),

            const SizedBox(height: 16,),
            buildMenuItem(
              text: 'Cerrar sesión',
              icon: Icons.people_alt,
              onClicked: () => selectedItem(context, 4),
            ),

          ],
        ),
      ),
    );
   
  }

  Widget buildMenuItem({
    required String text, 
    required IconData icon,
    VoidCallback? onClicked,
    }) {
      final color = Colors.white;
      final hoverColor = Colors.white70;

      return ListTile(
        leading: Icon(icon, color: color,),
        title: Text(text, style: TextStyle(color: color),),
        hoverColor: hoverColor,
        onTap: onClicked,
      );
    }

  void selectedItem(BuildContext context, int index) {
    Navigator.of(context).pop();
    switch(index){
      case 0:
      Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => AccountPage(),
        ));
        break;
        case 1:
        Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => AccountPage(),
        ));
        break;
        case 2:
        Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => Opportunities(),
        ));
        break;
        case 3:
        Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => Developments(),
        ));
        break;
        case 4:
        Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => Galery(),
        ));
        break;
    }
        
  }

  Widget buildHeader({
    required String urlImage, 
    required String name, 
    required String email, 
    required VoidCallback onClicked}) =>
    InkWell(
      onTap: onClicked,
      child: Container(
        padding: padding.add(EdgeInsets.symmetric(vertical: 40)),
        child: Row(
          children: [
            CircleAvatar(radius: 30, backgroundImage: NetworkImage(urlImage)),
            SizedBox(width: 20,),
            Column(
              children: [
                Text(name, style: TextStyle(fontSize: 20, color: Colors.white),),
                const SizedBox(height: 4,),
                Text(email, style: TextStyle(fontSize: 14, color: Colors.white),)
              ],
            ),
            Spacer(),
            CircleAvatar(
              radius: 24,
              backgroundColor: Color.fromRGBO(30, 60, 168, 1),
              child: Icon(Icons.add_a_photo_outlined, color: Colors.white,
            )
            ),
          ],
        ),
      ),

    );


}