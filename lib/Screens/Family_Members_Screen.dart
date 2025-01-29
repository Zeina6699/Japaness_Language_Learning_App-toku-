import 'package:flutter/material.dart';
import 'package:toku/Models/Item_Model.dart';
import 'package:toku/Widgets/Custom_Item_Container.dart';
import 'package:toku/Widgets/Custom_Text.dart';

class FamilyMembersScreen extends StatelessWidget {
  FamilyMembersScreen({super.key});

  List<ItemModel> familyList=[
    ItemModel(image:'assets/images/family_members/family_grandfather.png', jpText:'Ojisan', enText: 'GrandFather',sound:'grand father.wav' ),
    ItemModel(image:'assets/images/family_members/family_grandmother.png', jpText:'Sobo', enText: 'GrandMother',sound: 'grand mother.wav'),
    ItemModel(image: 'assets/images/family_members/family_father.png', jpText:'Chichioya',  enText:'Father',sound: 'father.wav'),
    ItemModel(image:'assets/images/family_members/family_mother.png',jpText:'Hahaoya', enText: 'Mother',sound: 'mother.wav'),
    ItemModel(image:'assets/images/family_members/family_son.png', jpText:'Musuko',  enText: 'Son',sound: 'son.wav'),
    ItemModel(image:'assets/images/family_members/family_daughter.png', jpText:'Musume', enText: 'Daughter',sound:'daughter.wav') ,
    ItemModel(image: 'assets/images/family_members/family_older_brother.png',jpText: 'Nisan', enText: 'Older Brother',sound: 'older brother.wav'),
    ItemModel(image: 'assets/images/family_members/family_older_sister.png', jpText: 'Ane',  enText: 'Older Sister',sound: 'older sister.wav'),
    ItemModel(image: 'assets/images/family_members/family_younger_brother.png', jpText: 'Ototo',  enText: 'Younger Brother',sound: 'younger brother.wav'),
    ItemModel(image: 'assets/images/family_members/family_younger_sister.png', jpText: 'Imoto',  enText: 'Younger Sister',sound: 'younger sister.wav'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme:const IconThemeData(color: Colors.white),
        backgroundColor: const Color(0xff46322B),
        title: CustomText(text: 'Family Members',color: Colors.white,fontSize:20),
      ),
      body:ListView.builder(
        itemCount:familyList.length ,
        itemBuilder: (context,index){
     return CustomItemContainer(
      itemModel:familyList[index],
      color:const Color(0xff527D31) ,
      string:'family_members' , );
      //CustomFamilyMembersContainer(context),
   } ));
  }
}
