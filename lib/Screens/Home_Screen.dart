import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:toku/Widgets/Custom_Container.dart';

import '../Widgets/Custom_Text.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        backgroundColor: Color(0xffFEF6DB),
    appBar: AppBar(
  backgroundColor: Color(0xff46322B),
  title: CustomText(text: 'Toku',color: Colors.white,fontSize: 18,)
),
body:Column(
  children: [
    CustomContainer(color:Color(0xffEF9235),onTap:(){Navigator.pushNamed(context,'/numbers');} ,text:'Numbers' ),
    CustomContainer(color: Color.fromARGB(255, 111, 185, 58), text:'Family Numbers'),
    CustomContainer(color: Color(0xff7D40A2), text: 'Colors'),
    CustomContainer(color:Color(0xff51B0D5), text:"Phrases")

  ],
),

      );
  }
}