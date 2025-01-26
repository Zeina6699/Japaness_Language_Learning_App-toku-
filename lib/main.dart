import 'package:flutter/material.dart';
import 'package:toku/Screens/Home_Screen.dart';
import 'package:toku/Screens/Numbers_Screen.dart';
import 'package:toku/Widgets/Custom_Container.dart';
import 'package:toku/Widgets/Custom_Text.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      routes:{
        '/home':(context)=>const HomeScreen(),
        '/numbers':(context)=>const NumbersScreen(),

      },
    initialRoute:'/home');}}
