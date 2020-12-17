import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'mycartpage.dart';

class DrawerClass extends StatefulWidget {
  @override
  _DrawerClassState createState() => _DrawerClassState();
}

class _DrawerClassState extends State<DrawerClass> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 25),
      //color: Colors.blue,
      width: MediaQuery.of(context).size.width * 0.7,
      child: Drawer(
        child: Stack(alignment: Alignment.topCenter, children: [
          Positioned(
            child: Container(
              margin: EdgeInsets.all(2),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
                color: Colors.lightBlueAccent,
              ),
              // padding: EdgeInsets.only(top:20),
              height: 150,
              width: MediaQuery.of(context).size.width * 0.79,
            ),
          ),
          Positioned(
            top: 110,
            child: Container(
              //  alignment: Alignment.center,
              height: 80,
              width: 80,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(400),
                  color: Colors.blue[50],
                  image: DecorationImage(
                      image: AssetImage('assets/images/profileimage.jpg'),
                      fit: BoxFit.fill)),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 200),
            child: Container(
              child: Text('Hello Joe!',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.blue),),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 220,
            ),
            child: Container(
            //  color: Colors.blue[50],
              alignment: Alignment.center,
              child: Column(children: [
                ListTile(
                  contentPadding: EdgeInsets.symmetric(horizontal: 40),
                  leading: Icon(Icons.home,color: Colors.blue,),
                  trailing: Text('Home',style: TextStyle(fontWeight: FontWeight.bold),),
                  selectedTileColor: Colors.blue[100],
                  onTap: null,
                ),
                ListTile(
                  contentPadding: EdgeInsets.symmetric(horizontal: 40),
                  leading: Icon(Icons.shopping_cart_sharp,color: Colors.black,),
                
                  
                  trailing: Text('My Cart',style: TextStyle(fontWeight: FontWeight.bold),),
                  selectedTileColor: Colors.blue[100],
                  onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MyCartHome()));
            },
                ),
                ListTile(
                    contentPadding: EdgeInsets.symmetric(horizontal: 40),
                    leading: Icon(Icons.payment,color: Colors.orange,),
                    trailing: Text('My Payment',style: TextStyle(fontWeight: FontWeight.bold),),
                    selectedTileColor: Colors.blue[100],
                    onTap: null),
                    Divider(thickness:1,indent: 2,),
                    SizedBox(height: 30,),
                ListTile(
                  contentPadding: EdgeInsets.symmetric(horizontal: 40),
                  leading:Icon(Icons.settings,
                       color: Colors.redAccent,
                      ),
                     
                  trailing: Text('Setting',),
                  selectedTileColor: Colors.blue[100],
                  onTap: null,
                ),
                ListTile(
                  contentPadding: EdgeInsets.symmetric(horizontal: 40),
                  leading:Icon(Icons.logout,
                       color: Colors.redAccent,
                      ),
                  trailing: Text('Logout',),
                  selectedTileColor: Colors.blue[100],
                  onTap: null,
                ),
                ListTile(
                  contentPadding: EdgeInsets.symmetric(horizontal: 40),
                  leading:Icon(Icons.report_problem_outlined,
                       color: Colors.redAccent,
                      ),
                      
                  trailing: Text('Report Problem',),
                  selectedTileColor: Colors.blue[100],
                  onTap: null,
                ),
                    ],),
              
            ),
          ),
        ]),
      ),
    );
  }
}
