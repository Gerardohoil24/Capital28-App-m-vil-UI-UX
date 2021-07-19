import 'package:flutter/material.dart';
import 'package:flutter_capital28_1/pages/Galery.dart';
import 'package:flutter_capital28_1/pages/registro_page.dart';
import 'package:get/get.dart';

class Login extends StatefulWidget {
  static String id = 'login';

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFF0D47A1),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Inicio de sesión".toUpperCase(),
                textAlign: TextAlign.center,
               style: TextStyle(
                color: Colors.white,
                fontSize: 40,
                fontWeight: FontWeight.bold
              ),
              ),
              SizedBox(
                height: 35.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                Expanded(
                  child: RaisedButton(
                    color: Colors.cyan,
                    child: Text('Inicio de sesión'), onPressed: (){Navigator.of(context).push(MaterialPageRoute(builder: (context) => Registro_page(),
        ));
                    },
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30)
                      ),
                  ),
                )
                ],
              ),

              
              SizedBox(
                height: 15.0,
              ),
              _TextFieldName(),
                SizedBox(
                height: 15.0,
              ),
              _TextFieldEmail(),
                SizedBox(
                height: 15.0,
              ),
              _TextFieldPassword(),
              SizedBox(
                height: 35.0,
              ),
              _ButtonsingUp(

              )
            ],
          ),
        ),
      ),
    );
  }


  Widget _TextFieldName() {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: 30.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
      child: TextField(
        decoration: InputDecoration(
          prefixIcon: Icon(Icons.person_add_outlined),
          labelText: "Nombre",
          hintText: "Gerardo Hoil",
        ),
      ),

    );
  }
  

  Widget _TextFieldEmail() {
    return Container(
        margin: EdgeInsets.symmetric(
        horizontal: 30.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
      child: TextField(
        decoration: InputDecoration(
          prefixIcon: Icon(Icons.email_outlined),
          labelText: "Correo",
          hintText: "ejemplo@gmail.com",
        ),
      ),

    );
  }

  Widget _TextFieldPassword() {
    return Container(
        margin: EdgeInsets.symmetric(
        horizontal: 30.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
      child: TextField(
        decoration: InputDecoration(
          prefixIcon: Icon(Icons.password_outlined),
          labelText: "Contraseña",
          hintText: "83483",
        ),
      ),
      
    );
  }
  



  Widget _ButtonsingUp() {
    return RaisedButton(
      color: Color(0xFFBBDEFB),
      padding: EdgeInsets.symmetric(
        horizontal: 200.0,
        vertical: 20.0,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30)
      ),
      child: Text('Registrar', style: TextStyle(
        color: Colors.black
        ),
      ),
      onPressed: (){
        

      },
    );
    
  }


}