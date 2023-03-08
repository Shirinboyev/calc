import 'package:calc/function.dart';
import 'package:flutter/material.dart';
class FirstPage extends StatefulWidget {
  const FirstPage({super.key});
  @override
  State<FirstPage> createState() => _FirstPageState();
}
class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    List lst = [
      'Chicken',
      'Pizza',
      'Burger',
      'Somsa',
      'Lagmon',
    ];
    List img = [
     'images/Chicken.png',
     'images/Pizza.png',
     'images/Burger.png',
     'images/Somsa.png',
     'images/Lagmon.png',
    ];
    List txt = [
      '',
    ];
  List app = [];
   return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: Text('${lst[b]}')),
        body: Container(child: 
        Column(
          children: [
          Center(
            child: Column(
              children: [
                Image.asset('${img[b]}'),
                Text('${txt[b]}')
              ],
            )
          )
        ],)
        ),
      ),
    );
  }
}