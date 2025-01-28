
import 'package:flutter/material.dart';
import 'package:toku/Models/Color_Model.dart';
import 'package:toku/Widgets/Custom_Text.dart';
import 'package:audioplayers/audioplayers.dart';

class CustomColorContainer extends StatefulWidget {
  const CustomColorContainer({
    required this.colorModel,
    super.key,
  });
  final ColorModel colorModel;

  @override
  State<CustomColorContainer> createState() => _CustomColorContainerState();
}

class _CustomColorContainerState extends State<CustomColorContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color:  Color(0xff7D40A2),
      child: Row(
        children: [
          Container(
            color:  const Color.fromARGB(255, 242, 214, 123),
            height: 100, child: Image.asset(widget.colorModel.image)),
        Padding(
          padding: const EdgeInsets.only(left:15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
           CustomText(text:widget.colorModel.title1,fontSize:20,color: Colors.white),
           CustomText(text:widget.colorModel.title2,color: Colors.white),
          
          ],),
        ),
        Spacer(),
        IconButton(   onPressed: ()async{
        try{
     final player = AudioPlayer();
            player.audioCache = AudioCache(prefix: 'assets/sounds/colors/');
            await player.play(AssetSource(widget.colorModel.sound));
      }
      catch(e){print(e);}},icon:const Icon(Icons.play_arrow,size: 30,color: Color(0xff46322B)))
        ],
      ),
    );
  }
}