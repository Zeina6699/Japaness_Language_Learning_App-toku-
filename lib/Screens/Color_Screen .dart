import 'package:flutter/material.dart';
import 'package:toku/Models/Item_Model.dart';
import 'package:toku/Widgets/Custom_Item_Container.dart';
import 'package:toku/Widgets/Custom_Text.dart';
import 'package:audioplayers/audioplayers.dart';

class ColorScreen  extends StatelessWidget {
 ColorScreen ({super.key});
  final List<ItemModel>colorList=[
  ItemModel(image: 'assets/images/colors/color_black.png', jpText: 'Burakku', enText: 'Black', sound:'black.wav'),
  ItemModel(image: 'assets/images/colors/color_brown.png',jpText: 'Chairo', enText: 'Brown', sound:'brown.wav'),
  ItemModel(image: 'assets/images/colors/color_red.png', jpText: 'Aka', enText: 'Red', sound:'red.wav'),
  ItemModel(image: 'assets/images/colors/color_green.png', jpText: 'Midori', enText: 'Green', sound:'green.wav'),
  ItemModel(image: 'assets/images/colors/yellow.png', jpText: 'Ki',enText: 'Yellow', sound:'yellow.wav'),
  ItemModel(image: 'assets/images/colors/color_white.png', jpText: 'Shiro', enText: 'White', sound:'white.wav'),
  ItemModel(image: 'assets/images/colors/color_dusty_yellow.png',jpText: 'Dasutī Ierō',enText: 'Dusty Yellow', sound:'dusty yellow.wav'),
 ItemModel(image: 'assets/images/colors/color_gray.png',jpText: 'Gurē', enText: 'Gray', sound:'gray.wav'),


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
          
          return CustomItemContainer(itemModel: colorList[index],color:Color(0xff7D40A2),
          string: 'colors');
          
        }),
    );
  }
}
