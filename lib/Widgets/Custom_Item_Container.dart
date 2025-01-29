
import 'package:flutter/material.dart';
import 'package:toku/Models/Item_Model.dart';
import 'package:toku/Widgets/Custom_Text.dart';
import 'package:audioplayers/audioplayers.dart';

class CustomItemContainer extends StatefulWidget {
const CustomItemContainer({
  required this.color,

    super.key, required this.itemModel, required this.string,
  });
  final ItemModel itemModel;
  final Color color;
  final String string;

  @override
  State<CustomItemContainer> createState() => _CustomNumbersContainerState();
}

class _CustomNumbersContainerState extends State<CustomItemContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
     color:widget.color,
    // const Color(0xffEF9235),
     height: 100,
     child: Row(
       children: [
         Container(color:  const Color.fromARGB(255, 242, 214, 123), child: Image.asset(widget.itemModel.image!)),
         Padding(
           padding: const EdgeInsets.only(left: 20),
           child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
             mainAxisAlignment: MainAxisAlignment.center,
             children: [
               CustomText(text:widget.itemModel.enText,fontSize:18,color: Colors.white),
               CustomText(text:widget.itemModel.jpText,fontSize:18,color: Colors.white)
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
        player.audioCache = AudioCache(prefix: 'assets/sounds/${widget.string}/');
        await player.play(AssetSource(widget.itemModel.sound));
            }
            catch(e){print(e);}},
            icon:const Icon( Icons.play_arrow,size: 30,color: Color(0xff46322B)))
         )
       ],
     ),
    );
  }
}

