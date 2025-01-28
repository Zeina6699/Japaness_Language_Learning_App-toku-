import 'package:flutter/material.dart';
import 'package:toku/Models/Family_Model.dart';
import 'package:toku/Widgets/Custom_Text.dart';
import 'package:toku/Widgets/Custom_Family_Members_Container.dart';

class FamilyMembersScreen extends StatelessWidget {
  FamilyMembersScreen({super.key});

  List<FamilyModel> familyModelList=[
    FamilyModel(image:'assets/images/family_members/family_grandfather.png', title1:'Ojisan', title2: 'GrandFather',sound:'grand father.wav' ),
    FamilyModel(image:'assets/images/family_members/family_grandmother.png', title1:'Sobo', title2: 'GrandMother',sound: 'grand mother.wav'),
    FamilyModel(image: 'assets/images/family_members/family_father.png', title1:'Chichioya', title2:'Father',sound: 'father.wav'),
    FamilyModel(image:'assets/images/family_members/family_mother.png', title1:'Hahaoya', title2: 'Mother',sound: 'mother.wav'),
    FamilyModel(image:'assets/images/family_members/family_son.png', title1:'Musuko', title2: 'Son',sound: 'son.wav'),
    FamilyModel(image:'assets/images/family_members/family_daughter.png', title1:'Musume', title2: 'Daughter',sound:'daughter.wav') ,
    FamilyModel(image: 'assets/images/family_members/family_older_brother.png', title1: 'Nisan', title2: 'Older Brother',sound: 'older brother.wav'),
    FamilyModel(image: 'assets/images/family_members/family_older_sister.png', title1: 'Ane', title2: 'Older Sister',sound: 'older sister.wav'),
    FamilyModel(image: 'assets/images/family_members/family_younger_brother.png', title1: 'Ototo', title2: 'Younger Brother',sound: 'younger brother.wav'),
    FamilyModel(image: 'assets/images/family_members/family_younger_sister.png', title1: 'Imoto', title2: 'Younger Sister',sound: 'younger sister.wav'),
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
        itemCount:familyModelList.length ,
        itemBuilder: (context,index){
     return CustomFamilyMembersContainer(familyModel:familyModelList[index] );
      //CustomFamilyMembersContainer(context),
   } ));
  }
}
