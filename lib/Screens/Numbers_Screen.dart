import 'package:flutter/material.dart';
import 'package:toku/Models/Item_Model.dart';
import 'package:toku/Widgets/Custom_Item_Container.dart';
import 'package:toku/Widgets/Custom_Text.dart';

class NumbersScreen extends StatelessWidget {
NumbersScreen({super.key});
   final List<ItemModel> numbersList = [
    ItemModel(image: 'assets/images/numbers/number_one.png', jpText: 'Ichi', enText: 'one',sound: 'number_one_sound.mp3' ),
    ItemModel(image: 'assets/images/numbers/number_two.png', jpText: 'Ni', enText: 'two',sound: 'number_two_sound.mp3'),
    ItemModel(image: 'assets/images/numbers/number_three.png', jpText: 'San', enText: 'three',sound: 'number_three_sound.mp3'),
    ItemModel(image: 'assets/images/numbers/number_four.png',jpText: 'Shi', enText: 'four',sound: 'number_four_sound.mp3'),
    ItemModel(image: 'assets/images/numbers/number_five.png',jpText: 'Go', enText: 'five',sound: 'number_five_sound.mp3'),
    ItemModel(image: 'assets/images/numbers/number_six.png', jpText: 'Roku', enText: 'six',sound: 'number_six_sound.mp3'),
    ItemModel(image: 'assets/images/numbers/number_seven.png',jpText: 'Sebun', enText: 'seven',sound: 'number_seven_sound.mp3'),
    ItemModel(image: 'assets/images/numbers/number_eight.png', jpText: 'hachi', enText: 'eight',sound: 'number_eight_sound.mp3'),
   ItemModel(image: 'assets/images/numbers/number_nine.png', jpText: 'kyuu', enText: 'nine',sound: 'number_nine_sound.mp3'),
    ItemModel(image: 'assets/images/numbers/number_ten.png', jpText: 'Jū', enText: 'ten',sound: 'number_ten_sound.mp3'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold( 

    appBar: AppBar(
      iconTheme: const IconThemeData(color: Colors.white),
      title:CustomText(text: 'Number Screen',color: Colors.white,),
      backgroundColor:const Color(0xff46322B),
     ) ,
     body:ListView.builder(
      itemCount: numbersList.length,
      itemBuilder: (context,index){
      return    CustomItemContainer(
        itemModel:numbersList[index],
        color: const Color(0xffEF9235),
        string:'numbers' ,
      
          );})
     );
  }
}/*
List<Widget>getList(List<ItemModel>numbers){
  List<Widget> num=[];
  for(int i=0;i<numbers.length;i++){
    num.add(CustomNumbersContainer(itemModel:numbers[i],));
  }
  return num;
}*/
