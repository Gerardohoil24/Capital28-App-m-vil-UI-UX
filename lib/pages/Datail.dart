import 'package:flutter/material.dart';

class Datail extends StatefulWidget {
  final String id;
  final String name;
  final String code;
  final String img;
  final String price;
  final String location;
  final List size;
 
  
  const Datail({Key? key, required this.id,
   required this.name, 
   required this.code, 
   required this.img, 
   required this.price,
   required this.location, 
   required this.size}) : super(key: key);
  @override
  _DatailState createState() => _DatailState();
}

class _DatailState extends State<Datail> {
  int activeSize = 0;
  int activeColor = 0;
  String activeImg = '';
  int qty = 1;
  @override
  void initState() {
   
    super.initState();
    setState(() {
      activeImg = widget.img;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: getBody(),
      bottomSheet: getBottom(),
    );
  }
  Widget getBottom(){
    var size = MediaQuery.of(context).size;
    return Container(
      height: 80,
      width: size.width,
      child: FlatButton(
        color: Colors.white,
        onPressed: (){
        // your add cart here
      }, child: Text("",style: TextStyle(
        fontSize: 18,
        color: Colors.white
      ),)),
    );
  }
  Widget getBody(){
    return SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(bottom: 60),
            child: ListView(
        children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 20,top: 20),
              child: InkWell(
                onTap: (){
                  Navigator.pop(context);
                },
                            child: Align(
                  alignment: Alignment.centerLeft,
                  child: Icon(Icons.arrow_back_ios)),
              ),
            ),
            SizedBox(height: 10,),
            Card(
              elevation: 2,
                        child: Hero(
                          tag: widget.id.toString(),
                                                child: Container(
                height: 400,
                decoration: BoxDecoration(
                  image: DecorationImage(image: NetworkImage(activeImg),fit: BoxFit.cover)
                ),
              ),
                        ),
            ),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.only(left: 20,right: 20),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text("Name :",style: TextStyle(
                    fontSize: 16,
                    height: 1.5
                  ),),
                  SizedBox(width: 20,),
                  Flexible(
                                  child: Text(widget.name,style: TextStyle(
                      fontSize: 16,
                      height: 1.5
                    ),),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.only(left: 20,right: 20),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text("location :",style: TextStyle(
                    fontSize: 16,
                    height: 1.5
                  ),),
                  SizedBox(width: 20,),
                  Flexible(
                                  child: Text(widget.location,style: TextStyle(
                      fontSize: 16,
                      height: 1.5
                    ),),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.only(left: 20,right: 20),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text("Price :",style: TextStyle(
                    fontSize: 16,
                    height: 1.5
                  ),),
                  SizedBox(width: 20,),
                  Flexible(
                                  child: Row(children: <Widget>[
                                    Text(widget.price+" Pesos",style: TextStyle(
                                      fontSize: 16,height: 1.5
                                    ),),
                                    SizedBox(width: 20,),
                                    Text(widget.price+" MXN",style: TextStyle(
                                      fontSize: 20,height: 1.5,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w400,
                                      decoration: TextDecoration.lineThrough
                                    ),)
                                  ],)
                  ),
                ],
              ),
            ),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.only(left: 20,right: 20),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text("Size :",style: TextStyle(
                    fontSize: 16,
                    height: 1.5
                  ),),
                  SizedBox(width: 20,),
                  Flexible(
                      child: Wrap(
                        children: List.generate(widget.size.length, (index){
                          return Padding(
                            padding: const EdgeInsets.only(right: 20),
                            child: InkWell(
                              onTap: (){
                                setState(() {
                                  activeSize = widget.size[index]['id'];
                                });
                              },
                                                        child: Container(
                        decoration: BoxDecoration(
                              border: Border.all(
                                width: 2,
                                color: activeSize == widget.size[index]['id'] ? Colors.white : Colors.transparent,
                                
                              ),
                              borderRadius: BorderRadius.circular(5)
                        ),
                        child: Padding(
                              padding: const EdgeInsets.only(top: 12,bottom: 12,right: 15,left: 15),
                              child: Text(widget.size[index]['value'],style: TextStyle(
                                fontSize: 16,
                                height: 1.5
                              ),),
                        ),
                      ),
                            ),
                          );
                        })
                      )
                  ),
                ],
              ),
            ),
             SizedBox(height: 20,),
        ],
      ),
          ),
    );
  }
}