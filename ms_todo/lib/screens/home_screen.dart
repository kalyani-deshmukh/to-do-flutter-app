
import 'package:flutter/material.dart';
import 'package:ms_todo/widget/default_list.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({ Key? key }) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          padding: EdgeInsets.all(20.0),
          child: Column(
            children: [
              Row(
                children: [
                  InkWell(
                    onTap: (){
                        Navigator.pushNamed(context, '/profile');
                      },
                    child: CircleAvatar(
                      child: Text(
                            'KD',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15.0,
                              color: Colors.white,
                            ),
                            ),
                      backgroundColor: Colors.deepPurple[500],
                    ),
                  ),
                  SizedBox(width: 10.0,),
                  Padding(
                    padding: const EdgeInsets.only(right: 100.0),
                    child: InkWell(
                      onTap: (){
                        Navigator.pushNamed(context, '/profile');
                      },
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                          Text(
                            'Kalyani Deshmukh',
                             style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15.0,
                              ),
                            ),
                          Icon(IconData(0xe098, fontFamily: 'MaterialIcons'),),
                        ],
                          ),
                          Text(
                            'kaldeshm@publicisgroupe.net',
                            style: TextStyle(
                                fontSize: 12.0,
                                color: Colors.grey[500],
                              ),
                            ),
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: (){
                        Navigator.pushNamed(context, '/search');
                      },
                    child: Icon(
                      Icons.search,
                      color: Colors.blue,
                      size: 30,
                      ),
                  ),
                ],
              ),
              SizedBox(height: 10,),
              Column(
                children: [
                  DefaultList(),
                  
                ],
              ),

            ],
          ),
        ),
      ),
    );
  }
}