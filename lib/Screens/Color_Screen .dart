import 'package:flutter/material.dart';
import 'package:toku/Models/Color_Model.dart';
import 'package:toku/Widgets/Custom_Color_Container.dart';
import 'package:toku/Widgets/Custom_Text.dart';
import 'package:audioplayers/audioplayers.dart';

class ColorScreen  extends StatelessWidget {
 ColorScreen ({super.key});
  final List<ColorModel>colorList=[
  ColorModel(image: 'assets/images/colors/color_black.png', title1: 'Burakku', title2: 'Black', sound:'black.wav'),
  ColorModel(image: 'assets/images/colors/color_brown.png', title1: 'Chairo', title2: 'Brown', sound:'brown.wav'),
  ColorModel(image: 'assets/images/colors/color_red.png', title1: 'Aka', title2: 'Red', sound:'red.wav'),
  ColorModel(image: 'assets/images/colors/color_green.png', title1: 'Midori', title2: 'Green', sound:'green.wav'),
  ColorModel(image: 'assets/images/colors/yellow.png', title1: 'Ki', title2: 'Yellow', sound:'yellow.wav'),
  ColorModel(image: 'assets/images/colors/color_white.png', title1: 'Shiro', title2: 'White', sound:'white.wav'),
  ColorModel(image: 'assets/images/colors/color_dusty_yellow.png', title1: 'Dasutī Ierō', title2: 'Dusty Yellow', sound:'dusty yellow.wav'),
  ColorModel(image: 'assets/images/colors/color_gray.png', title1: 'Gurē', title2: 'Gray', sound:'gray.wav'),


  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff46322B), 
        iconTheme: IconThemeData(color:Colors.white),
        title: CustomText(text: 'Colors Screen',color: Colors.white,),
      ),
      body: ListView.builder(
        itemCount: colorList.length,
        itemBuilder: (context,index){
          
          return CustomColorContainer(colorModel: colorList[index],);
        }),
    );
  }
}
