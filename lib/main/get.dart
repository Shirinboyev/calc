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
        List img = [
     'images/Chicken.png',
     'images/Pizza.png',
     'images/Burger.png',
     'images/Somsa.png',
     'images/Lagmon.png',
    ];
     List  list = getInfo();
      return  Scaffold(
        body: ListView.builder(
          itemCount: list.length,
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListTile(
                     shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(topLeft: Radius.circular(60),bottomRight: Radius.circular(60),topRight: Radius.circular(20),bottomLeft: Radius.circular(20))
            ),
              tileColor: Color.fromARGB(255, 119, 169, 209),
            onTap: () {
              b = index;
              Navigator.pushNamed(context, 'firstPage');
            },
            leading: CircleAvatar(backgroundImage: AssetImage('${img[index]}'),),
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
            trailing: Icon(Icons.arrow_forward_ios_sharp),
          ),
        ),
      ),
    );
  }
}