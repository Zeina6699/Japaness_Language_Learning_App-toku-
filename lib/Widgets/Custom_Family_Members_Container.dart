import 'package:flutter/material.dart';
import 'package:toku/Models/Family_Model.dart';
import 'package:toku/Screens/Family_Members_Screen.dart';
import 'package:toku/Widgets/Custom_Text.dart';
import 'package:audioplayers/audioplayers.dart';

class CustomFamilyMembersContainer extends StatefulWidget {
 const CustomFamilyMembersContainer({
  required this.familyModel,
    super.key,
  });
final FamilyModel familyModel;

  @override
  State<CustomFamilyMembersContainer> createState() => _CustomFamilyMembersContainerState();
}

class _CustomFamilyMembersContainerState extends State<CustomFamilyMembersContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
        color:const  Color(0xff527D31),
        child: Row(
          children: [
            Container (color:  const Color.fromARGB(255, 242, 214, 123), height: 100, child: Image.asset(widget.familyModel.image)),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children:[
                CustomText(text:widget.familyModel.title1,color: Colors.white,fontSize:18,),
                CustomText(text:widget.familyModel.title2,color: Colors.white,fontSize: 18,),
              
              ]),
            ),
            const  Spacer(),
            IconButton(
                 onPressed: ()async{
              try{
           final player = AudioPlayer();
        player.audioCache = AudioCache(prefix: 'assets/sounds/family_members/');
        await player.play(AssetSource(widget.familyModel.sound));
            }
            catch(e){print(e);}},
               icon:const Icon( Icons.play_arrow,size: 30,color: Color(0xff46322B)))
    
          ],
        ),
      );
    }
}
