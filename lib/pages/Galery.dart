import 'package:flutter/material.dart';
import 'package:flutter_capital28_1/constant/data.json.dart';
import 'package:flutter_capital28_1/pages/Appointment.dart';
import 'package:flutter_capital28_1/pages/Datail.dart';
import 'package:flutter_capital28_1/pages/HomeUser.dart';
import 'package:flutter_capital28_1/pages/home_admin.dart';
import 'package:get/get.dart';

class Galery extends StatefulWidget {
   static String id = 'galery';
 

  @override
  _GaleryState createState() => _GaleryState();
}

class _GaleryState extends State<Galery> {
  int activeMenu = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: getBody(),
    );
  }
  Widget getBody(){
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(
              top: 20,
              left: 20, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween ,
              children: <Widget> [
                Text("Galeria", style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w400
                ),)
              ],
            ),
          ),
          SizedBox(
                height: 15.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                Expanded(
                  child: RaisedButton(
                    color: Colors.cyan,
                    child: Text('Agendar cita'), onPressed: (){Navigator.of(context).push(MaterialPageRoute(builder: (context) => Appointment(),
        ));
                    },
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30)
                      ),
                  ),
                )
                ],
              ),
          SizedBox(height: 20,),
          Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                Expanded(
                  child: RaisedButton(
                    color: Colors.cyan,
                    child: Text('Perfil'), onPressed: (){Navigator.of(context).push(MaterialPageRoute(builder: (context) => HomeUser(),
        ));
                    },
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30)
                      ),
                  ),
                )
                ],
              ),

          SizedBox(height: 20,),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: const EdgeInsets.only(right: 20, left: 20 ),
              child: Row( children: List.generate(dataItems.length
              , (index){
                return Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: InkWell(
                    onTap: (){
                      setState(() {
                        activeMenu == dataItems[index];
                      });
                    },
                    child: Container(
                    decoration: BoxDecoration(
                      border: Border(bottom: BorderSide(color: Colors.black, width: 2))
                    ),
                    child:Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(menuItems[index], style: TextStyle(
                        fontSize: 16,
                            
                      ) ,),
                    ),
                    ),
                  ),
                );
              })
              ),
            ),
          ),
          SizedBox(
            height: 30,),
          Wrap(
            children: List.generate(dataItems.length,
             (index){
               return InkWell(
                 onTap: (){
                   Navigator.push(context, 
                   MaterialPageRoute(builder: (_)=> 
                   Datail(id: dataItems[index]
                   ['id'].toString(),
                   name: dataItems[index]['name'],
                   code: dataItems[index]['code'],
                   img: dataItems[index]['img'],
                   price: dataItems[index]['price'].toString(),
                   location: dataItems[index]['location'],
                   size: dataItems[index]['size'],
                   
                   )));
                 },
                 child: Card(
                           elevation: 2,
                           child: Column(
                             crossAxisAlignment: CrossAxisAlignment.start,
                             children: <Widget>[
                 Container(
                   width: (size.width-16)/2,
                   height: (size.width-16)/2,
                   decoration: BoxDecoration(
                     image: DecorationImage(image: 
                     NetworkImage(dataItems[index]['img']),
                     fit: BoxFit.cover
                     ),
                   ),
                 ),
                 SizedBox(height: 15,),
                 Padding(
                   padding: const EdgeInsets.only(left: 15),
                   child: Text(dataItems[index]['code'],style: TextStyle(
                     fontSize: 16,
                   ),),
                 ),
                 SizedBox(height: 10,),
                 Padding(
                   padding: const EdgeInsets.only(left: 15),
                   child: Text(dataItems[index]['price'].toString()+"USD", style: TextStyle(
                     fontSize: 16
                   ),),
                 ),
                 SizedBox(height: 10,),
                             ],
                           ),
                         ),
               );
             }),
          )
        ],
      ),
    );
  }
}