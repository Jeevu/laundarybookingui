import 'package:flutter/material.dart';

class CardWidget extends StatefulWidget {
  final String image;
  final String title;
  final String subtitle;
  final String price;
  final String icon;
  CardWidget(
      {Key key, this.image, this.title, this.subtitle, this.price, this.icon})
      : super(key: key);
  @override
  _CardWidgetState createState() => _CardWidgetState();
}

class _CardWidgetState extends State<CardWidget> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30.0),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(left: 20),
            child: Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(this.widget.image),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
          Expanded(
            child: Column(
              children: [
                ListTile(
                    title: Text(
                      this.widget.title,
                      textDirection: TextDirection.ltr,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    subtitle: Text(
                      this.widget.subtitle,
                      textAlign: TextAlign.start,
                    ),
                    // isThreeLine: false,
                    trailing: Container(
                      height: 20,
                      width: 20,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(this.widget.icon),
                        ),
                      ),
                    )),
                Padding(
                  child: Text(
                    this.widget.price,
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.green[600]),
                  ),
                  padding: EdgeInsetsDirectional.only(end: size.width * 0.46),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
