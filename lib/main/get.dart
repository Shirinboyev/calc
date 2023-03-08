import 'package:calc/function.dart';
import 'package:calc/home/map.dart';
import 'package:flutter/material.dart';
import 'package:calc/function.dart';
class Get extends StatefulWidget {
  const Get({super.key});
  @override
  State<Get> createState() => _GetState();
} 
class _GetState extends State<Get> {
  @override
  Widget build(BuildContext context) {
     List  list = getInfo();
      return  Scaffold(
        body: ListView.builder(
          itemCount: list.length,
        itemBuilder: (context, index) => ListTile(
          onTap: () {
            b = index;
            Navigator.pushNamed(context, 'firstPage');
          },
          leading: CircleAvatar(backgroundImage: AssetImage('images/${list}.png'),),
          title: Text('${list[index].title}'),
          subtitle:  Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
           Icon(Icons.access_time,color: Colors.blueGrey,), 
             Text(list[index].time,style: TextStyle(color: Colors.blueGrey),),
              Icon(Icons.access_time,color: Colors.red,),
             Text(list[index].rating,style: TextStyle(color: Colors.red),),
              Icon(Icons.local_fire_department_rounded,color: Colors.amber,),
             Text(list[index].energy,style: TextStyle(color: Colors.amber),),
          ],),
        ),
      ),
    );
  }
}