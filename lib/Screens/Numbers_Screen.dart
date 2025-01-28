import 'package:flutter/material.dart';
import 'package:toku/Models/Numbers_Model.dart';
import 'package:toku/Widgets/Custom_Number_Container.dart';
import 'package:toku/Widgets/Custom_Text.dart';

class NumbersScreen extends StatelessWidget {
NumbersScreen({super.key});
   final List<NumberModel> numbers = [
    NumberModel(image: 'assets/images/numbers/number_one.png', text1: 'Ichi', text2: 'one',sound: 'number_one_sound.mp3' ),
    NumberModel(image: 'assets/images/numbers/number_two.png', text1: 'Ni', text2: 'two',sound: 'number_two_sound.mp3'),
    NumberModel(image: 'assets/images/numbers/number_three.png', text1: 'San', text2: 'three',sound: 'number_three_sound.mp3'),
    NumberModel(image: 'assets/images/numbers/number_four.png', text1: 'Shi', text2: 'four',sound: 'number_four_sound.mp3'),
    NumberModel(image: 'assets/images/numbers/number_five.png', text1: 'Go', text2: 'five',sound: 'number_five_sound.mp3'),
    NumberModel(image: 'assets/images/numbers/number_six.png', text1: 'Roku', text2: 'six',sound: 'number_six_sound.mp3'),
    NumberModel(image: 'assets/images/numbers/number_seven.png', text1: 'Sebun', text2: 'seven',sound: 'number_seven_sound.mp3'),
    NumberModel(image: 'assets/images/numbers/number_eight.png', text1: 'hachi', text2: 'eight',sound: 'number_eight_sound.mp3'),
    NumberModel(image: 'assets/images/numbers/number_nine.png', text1: 'kyuu', text2: 'nine',sound: 'number_nine_sound.mp3'),
    NumberModel(image: 'assets/images/numbers/number_ten.png', text1: 'Jū', text2: 'ten',sound: 'number_ten_sound.mp3'),
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
      itemCount: numbers.length,
      itemBuilder: (context,index){
      return    CustomNumbersContainer(
        numberModel:numbers[index]
      
          );})
     );
  }
}
List<Widget>getList(List<NumberModel>numbers){
  List<Widget> num=[];
  for(int i=0;i<numbers.length;i++){
    num.add(CustomNumbersContainer(numberModel:numbers[i],));
  }
  return num;
}
