// import 'package:calc/home/data.dart';
import 'package:calc/home/data.dart';
import 'package:calc/main.dart';
import 'package:flutter/material.dart';
// import 'package:calc/function.dart';
// import 'package:calc/screen/firstPage.dart';
// import 'package:calc/home/food.dart';
class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: Text('${foood}')),
        body: Container(child: 
        Column(
          children: [
          Center(
            child: ElevatedButton(onPressed: (){
              Navigator.pop(context,MaterialPageRoute(builder: (context) => MyApp(),));
            }, child: Text('Back')),
          )
        ],)
        ),
      ),
    );
  }
}