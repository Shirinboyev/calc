import 'package:calc/main/get.dart';
import 'package:calc/screen/firstPage.dart';
import'package:flutter/material.dart';

void main(){
runApp(
 MaterialApp(
  debugShowCheckedModeBanner: false,
   home: MyApp(),));
    } 
     class MyApp extends StatelessWidget {
      const MyApp({
     super.key});
    @override
   Widget build(BuildContext context) {
  return MaterialApp(
    initialRoute: 'get',
    routes: {
      'get':(context) => Get(),
      'firstPage':(context) => FirstPage()
    },
    home: 
  
  Scaffold(body: Get(),));
 }
}