import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:laundarybookingui/cardwidget.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    print(size);
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: SafeArea(
        child: SingleChildScrollView(
          child:Container(
           padding: EdgeInsets.symmetric(horizontal: size.width * 0.02),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: size.height * 0.05),
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: size.width * 0.02),
                  width: double.infinity,
                  height: size.height * 0.091,
                  child: LayoutBuilder(
                    builder: (context, constraints) {
                      print(constraints.maxHeight * 0.9);
                      print(
                        constraints.maxHeight * 0.8,
                      );
                      return Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                           Icon(
                                  Icons.menu,
                                  size: 30,
                                  color: Color.fromRGBO(44, 44, 44, 1),
                                ),
                          SizedBox(
                            width: constraints.maxWidth * 0.68,
                          ),
                          Container(
                            height: 52.416,
                            width: constraints.maxHeight * 0.8,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(
                                    constraints.maxHeight * 0.35),
                                image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage(
                                        'assets/images/profileimage.jpg'))),
                          )
                        ],
                      );
                    },
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: size.width * 0.02),
                height: size.height * 0.23,
                width: double.infinity,
                //color: Colors.purple,
                child: LayoutBuilder(builder: (context, constraints) {
                  return Column(
                    children: [
                      // Container(
                        Padding(padding: EdgeInsets.symmetric(
                            horizontal: constraints.maxWidth * 0.02),
  
                       child:
                         Center(
                          child: Text(
                            "Hey Jon! What service do you need today?",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: size.height * 0.05,
                            ),
                            textAlign: TextAlign.left,
                            maxLines: 3,
                            overflow: TextOverflow.fade,
                          ),
                        ),),
                
                    ],
                  );
                },
                ),
              ),
              Padding(padding: EdgeInsets.all( size.width * 0.03),
             child: Column(children:[
              CardWidget(image:('assets/images/profileimage.jpg'),title: 'Wash & Iron',subtitle: 'Time: 2days',price:'\$${"3/item"}',icon:('assets/images/icon.png'),),
              CardWidget(image:('assets/images/profileimage.jpg'),title: 'Iron Only',subtitle: 'Time: 2days',price:'\$${"3/item"}',icon:('assets/images/icon.png'),),
              CardWidget(image:('assets/images/profileimage.jpg'),title: 'Dry Clean',subtitle: 'Time: 2days',price:'\$${"3/item"}',icon:('assets/images/icon.png'),),
              CardWidget(image:('assets/images/profileimage.jpg'),title: 'Chemical Wash',subtitle: 'Time: 2days',price:'\$${"3/item"}',icon:('assets/images/icon.png'),)
             ],),)
            ],
          ),
          ),
        ),
      ),
    );
  }
}
