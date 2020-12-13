import 'package:flutter/material.dart';

class MyCartItems extends StatefulWidget {
  MyCartItems({Key key}) : super(key: key);
  @override
  _MyCartItemsState createState() => _MyCartItemsState();
}

class _MyCartItemsState extends State<MyCartItems> {
  @override
  Widget build(BuildContext context) {
    var items = List<Widget>();
    var cartitems = [
      [
        AssetImage('assets/images/wash-iron.jpg'),
        'Shirt',
        'Wash and Iron',
        '\$${"3/item"}'
      ],
      [
        AssetImage('assets/images/dryclean.jpg'),
        'Pant',
        'Dry Clean',
        '\$${"3/item"}'
      ],
    ];
    for (var myitems in cartitems) {
      items.add(
        MyCartWidget(
          type: myitems,
        ),
      );
    }
    return Container(
      height: 265,
      width: MediaQuery.of(context).size.width,
      child: Scrollbar(
        thickness: 3.0,
        child: Column(
          children: items,
        ),
      ),
    );
  }
}

class MyCartWidget extends StatefulWidget {
  final List type;

  const MyCartWidget({Key key, this.type}) : super(key: key);

  @override
  _MyCartWidgetState createState() => _MyCartWidgetState();
}

class _MyCartWidgetState extends State<MyCartWidget> {
  var counter = 3;
  void incrementcounter() {
    setState(() {
      counter++;
    });
  }

  void decrementcounter() {
    {
      setState(() {
        if (counter > 0) counter--;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.fromLTRB(20, 10, 20, 5),
          child: Row(
            // mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: widget.type[0],
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      height: 55,
                      child: ListTile(
                        title: Text(
                          widget.type[1],
                          textDirection: TextDirection.ltr,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        subtitle: Text(
                          widget.type[2],
                          textAlign: TextAlign.start,
                        ),
                        isThreeLine: false,
                      ),
                    ),
                    Padding(
                      child: Text(
                        widget.type[3],
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.green[600]),
                      ),
                      padding: EdgeInsetsDirectional.only(
                          end: MediaQuery.of(context).size.width * 0.4),
                    ),
                  ],
                ),
              ),
              Container(
                //    height: 112,
                //  width: 30,
                // padding: EdgeInsets.only(right: 20),
                decoration: BoxDecoration(
                  color: Colors.white70,
                  borderRadius: BorderRadius.vertical(
                      top: Radius.circular(30), bottom: Radius.circular(30)),
                ),
                child: Column(
                  children: [
                    IconButton(
                      iconSize: 15,
                      icon: Icon(Icons.add),
                      onPressed: incrementcounter,
                    ),
                    Text(
                      '$counter',
                      style: TextStyle(fontSize: 10),
                    ),
                    IconButton(
                      iconSize: 15,
                      icon: Icon(Icons.remove),
                      onPressed: decrementcounter,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
