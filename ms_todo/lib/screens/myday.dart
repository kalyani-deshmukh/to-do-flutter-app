import 'package:flutter/material.dart';
import 'package:intl/intl.dart';


class MyDay extends StatefulWidget {

  @override
  _MyDayState createState() => _MyDayState();
}

class _MyDayState extends State<MyDay> {
//var now = new DateTime.now();
String now = DateFormat("yyyy-MM-dd").format(DateTime.now());


  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('asset/images/myday.jpg'),
              fit: BoxFit.cover,
            ),
          ),
          child: SafeArea(
            child: Padding(
              padding: EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ListTile(
                    leading: InkWell(
                      child: Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                        size: 30.0,
                        ),
                        onTap:  (){Navigator.pop(context);},
                    ),
                    trailing:  InkWell(
                      child: Icon(
                        Icons.more_vert_outlined,
                        color: Colors.white,
                        size: 30.0,
                        ),
                      onTap:  (){Navigator.pop(context);},
                    ),
                  ),
                  SizedBox(height: 20.0,),
                  Text(
                    'My Day',
                    style: TextStyle(
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      ),
                    textAlign: TextAlign.left,
                    ),
                  Text(
                    now,
                    style: TextStyle(
                      fontSize: 16.0,
                      color: Colors.white,
                      ),
                    textAlign: TextAlign.left,
                    ),
                ],
              ),
            ),
          ),
       ),
    );
  }
}