import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:toku/Models/Phrases_Model.dart';
import 'package:toku/Widgets/Custom_Text.dart';

class CustomPhrasesContainer extends StatefulWidget {
  const CustomPhrasesContainer({
    this.index,
    required this.phrasesModel,
    super.key,
  });
  final int? index;
  final PhrasesModel phrasesModel;

  @override
  State<CustomPhrasesContainer> createState() => _CustomPhrasesContainerState();
}

class _CustomPhrasesContainerState extends State<CustomPhrasesContainer> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 100,
         constraints: BoxConstraints(
      maxWidth: MediaQuery.of(context).size.width * 0.9), 
       padding:const EdgeInsets.symmetric(horizontal: 15),
       color: (widget.index! % 2 == 0) ? const Color(0xff51B0D5) :const Color.fromARGB(255, 90, 81, 213), 
         child: Row(
           children: [
             Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
               children: [
                 CustomText(text:widget.phrasesModel.text1,color: Colors.white, fontSize: 17,maxLines: 1,  overflow: TextOverflow.ellipsis,),
                 CustomText(text: widget.phrasesModel.text2,color: Colors.white, fontSize: 17,maxLines: 1, overflow: TextOverflow.ellipsis,)
             
               ],
             ),
             Spacer(),
             IconButton( onPressed: ()async{
              try{
           final player = AudioPlayer();
        player.audioCache = AudioCache(prefix: 'assets/sounds/phrases/');
        await player.play(AssetSource(widget.phrasesModel.sound));
            }
            catch(e){print(e);}},icon:
              Icon(Icons.play_arrow,size: 30,color:  Colors.white))
           ],
         ),
       ),
    );
  }
}
