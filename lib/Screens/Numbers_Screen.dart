import 'package:flutter/material.dart';
import 'package:toku/Models/Numbers_Model.dart';
import 'package:toku/Widgets/Custom_Number_Container.dart';
import 'package:toku/Widgets/Custom_Text.dart';

class NumbersScreen extends StatelessWidget {
NumbersScreen({super.key});
   final List<NumberModel> numbers = [
    NumberModel(image: 'assets/images/numbers/number_one.png', text1: 'ichi', text2: 'one'),
    NumberModel(image: 'assets/images/numbers/number_two.png', text1: 'ni', text2: 'two'),
    NumberModel(image: 'assets/images/numbers/number_three.png', text1: 'san', text2: 'three'),
    NumberModel(image: 'assets/images/numbers/number_four.png', text1: 'yon', text2: 'four'),
    NumberModel(image: 'assets/images/numbers/number_five.png', text1: 'go', text2: 'five'),
    NumberModel(image: 'assets/images/numbers/number_six.png', text1: 'roku', text2: 'six'),
    NumberModel(image: 'assets/images/numbers/number_seven.png', text1: 'nana', text2: 'seven'),
    NumberModel(image: 'assets/images/numbers/number_eight.png', text1: 'hachi', text2: 'eight'),
    NumberModel(image: 'assets/images/numbers/number_nine.png', text1: 'kyuu', text2: 'nine'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold( 

    appBar: AppBar(
      iconTheme: IconThemeData(color: Colors.white),
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
