
import 'package:flutter/material.dart';
import 'package:toku/Models/Numbers_Model.dart';
import 'package:toku/Widgets/Custom_Text.dart';

class CustomNumbersContainer extends StatelessWidget {
CustomNumbersContainer({
    super.key, required this.numberModel,
  });
  final NumberModel numberModel;


  @override
  Widget build(BuildContext context) {
    return Container(
     color:Color(0xffEF9235),
     height: 100,
     child: Row(
       children: [
         Container(color:  Color.fromARGB(255, 242, 214, 123), child: Image.asset(numberModel.image)),
         Padding(
           padding: const EdgeInsets.only(left: 20),
           child: Column(
             mainAxisAlignment: MainAxisAlignment.center,
             children: [
               CustomText(text:numberModel.text1,fontSize:20,color: Colors.white),
               CustomText(text:numberModel.text2,fontSize:20,color: Colors.white)
             ],
           ),
         ),
        const Spacer(),
        const Padding(
           padding:EdgeInsets.only(right: 13),
           child: Icon(Icons.play_arrow,size: 30,color: Color(0xff46322B)),
         )
       ],
     ),
    );
  }
}

