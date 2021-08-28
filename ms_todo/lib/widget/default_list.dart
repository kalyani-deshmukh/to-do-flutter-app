import 'package:flutter/material.dart';
import 'package:ms_todo/screens/myday.dart';

class DefaultList extends StatelessWidget {
  const DefaultList({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
         ListTile(
      onTap: (){
        Navigator.pushNamed(context, '/myday');
      } ,           
      leading: Icon(
              Icons.wb_sunny_outlined,
              color: Colors.deepPurpleAccent,
              size: 20,
              ),
            title: Text(
              'My Day',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                ),
              ),
            trailing: Text('0'),
            
        
          ),
      ],
    );
  }
}