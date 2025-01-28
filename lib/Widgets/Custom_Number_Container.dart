
import 'package:flutter/material.dart';
import 'package:toku/Models/Numbers_Model.dart';
import 'package:toku/Widgets/Custom_Text.dart';
import 'package:audioplayers/audioplayers.dart';

class CustomNumbersContainer extends StatefulWidget {
const CustomNumbersContainer({
    super.key, required this.numberModel,
  });
  final NumberModel numberModel;


  @override
  State<CustomNumbersContainer> createState() => _CustomNumbersContainerState();
}

class _CustomNumbersContainerState extends State<CustomNumbersContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
     color:const Color(0xffEF9235),
     height: 100,
     child: Row(
       children: [
         Container(color:  const Color.fromARGB(255, 242, 214, 123), child: Image.asset(widget.numberModel.image)),
         Padding(
           padding: const EdgeInsets.only(left: 20),
           child: Column(
             mainAxisAlignment: MainAxisAlignment.center,
             children: [
               CustomText(text:widget.numberModel.text1,fontSize:20,color: Colors.white),
               CustomText(text:widget.numberModel.text2,fontSize:20,color: Colors.white)
             ],
           ),
         ),
        const Spacer(),
         Padding(
           padding:const EdgeInsets.only(right: 13),
           child: IconButton(
            onPressed: ()async{
              try{
           final player = AudioPlayer();
        player.audioCache = AudioCache(prefix: 'assets/sounds/numbers/');
        await player.play(AssetSource(widget.numberModel.sound));
            }
            catch(e){print(e);}},
            icon:const Icon( Icons.play_arrow,size: 30,color: Color(0xff46322B)))
         )
       ],
     ),
    );
  }
}

