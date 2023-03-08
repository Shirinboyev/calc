import 'package:calc/function.dart';
import 'package:calc/main/get..dart';
import 'package:calc/screen/firstPage.dart';
import 'home/data.dart';
import 'package:calc/home/food.dart';
import'package:flutter/material.dart';
class MyApp extends StatelessWidget {
  const MyApp({
    super.key});
  @override
  Widget build(BuildContext context) {
return Scaffold(body: Get(),);
  }
}
void main(){
  runApp(
   MaterialApp(home: MyApp(),));
}