 import 'package:flutter/material.dart';
 class Cartwidget extends StatefulWidget {
   @override
   _CartwidgetState createState() => _CartwidgetState();
 }
 
 class _CartwidgetState extends State<Cartwidget> {
   @override
   Widget build(BuildContext context) {
     return Column(
       children:[
        Container(
          padding: EdgeInsets.fromLTRB(10, 10, 20, 20),
          height: 50,
            child: ListTile(
               leading: Text(
                  "Total",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              trailing:  Text('\$${"18"}',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.green),),
              
            ),
        ),
          
          Container(
          //  height: 120,
            padding: EdgeInsets.only(top:20),
            color: Colors.grey[300],
            child:Padding(
              padding:EdgeInsets.all(20) ,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              
              children: [
                Image.asset('assets/mycartimages/cardvisa.png',height: 70,),
                Row(
                  children: [
                   Text('Change ',style: TextStyle(color: Colors.blue),),

                    Image.asset('assets/mycartimages/changebtn.png'),
                  ],
                ),
              ],
            ),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(5, 40, 5, 0),
            child: Card(
             
              color: Colors.black,
              child: ListTile(
                leading: Text('Confirm Payment',style: TextStyle(color:Colors.white),),
                trailing:  Image.asset(
                  'assets/mycartimages/conpaybtn.png',
                  height: 30,
                  width: 50,
                
                
              )
              ),
            ),
          ),
        ]);
   }
 }