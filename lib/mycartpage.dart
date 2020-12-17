import 'package:flutter/material.dart';
import 'package:laundarybookingui/cartwidget.dart';
import 'package:laundarybookingui/mycartitems.dart';

class MyCartHome extends StatefulWidget {
  @override
  _MyCartHomeState createState() => _MyCartHomeState();
}

class _MyCartHomeState extends State<MyCartHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: (Text(
          'My Cart',
          style: TextStyle(color: Colors.black),
        )),
        backgroundColor: Colors.transparent,
        centerTitle: true,
        shadowColor: Colors.transparent,
        leading: Container(
          height: 10,
          width: 10,
          child: IconButton(
            icon: Image.asset('assets/mycartimages/icon1.png'),
            iconSize: 50,
            onPressed: () { Navigator.of(context).pop();},
          ),
        ),
      ),
      body:Column(children:[
       MyCartItems(),
       Cartwidget(),],)
    );
  }
}
