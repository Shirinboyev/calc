import 'package:calc/function.dart';
import 'package:calc/screen/firstPage.dart';
import 'home/data.dart';
import 'package:calc/home/food.dart';
import'package:flutter/material.dart';
class MyApp extends StatelessWidget {
  const MyApp({
    
    super.key});

  @override
  Widget build(BuildContext context) {
    List  list = getInfo();
return  Scaffold(
        body: ListView.builder(itemCount: list.length,
        itemBuilder: (context, index) => ListTile(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: ((context) => FirstPage())));
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
void main(){
  runApp(
   MaterialApp(home: MyApp(),));
}