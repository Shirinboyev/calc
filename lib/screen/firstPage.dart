import 'package:calc/home/data.dart';
import 'package:calc/main.dart';
import 'package:flutter/material.dart';
class FirstPage extends StatefulWidget {
  const FirstPage({super.key});
  @override
  State<FirstPage> createState() => _FirstPageState();
}
class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    List img = [
    'images/Burger.png',
    'images/Chicken.png',
    'images/Lagmon.png',
    'images/Pizza.png',
    'images/Somsa.png',
    ];
        List fod = [
    'Burger',
    'Chicken',
    'Lagmon',
    'Pizza.',
    'Somsa.',
    ];
  // List app = [];
  for (int i = 0; i<foood.length;i++){
    img.add(i);
  }
   return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: Text('${fod}')),
        body: Container(child: 
        Column(
          children: [
          Center(
            child: TextButton(onPressed: (){
              Navigator.pop(context,MaterialPageRoute(builder: (context) => MyApp(),));
            }, child:Column(
              children: [
                Image.asset('${img[1]}')
              ],
            )),
          )
        ],)
        ),
      ),
    );
  }
}