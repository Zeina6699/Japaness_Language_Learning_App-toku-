import 'package:flutter/material.dart';
import 'package:toku/Models/Item_Model.dart';
import 'package:toku/Widgets/Custom_Phrases_Container.dart';
import 'package:toku/Widgets/Custom_Text.dart';

class PhreasesScreen extends StatelessWidget {
   PhreasesScreen({super.key});
  List<ItemModel>phrases=[
    ItemModel(enText: 'Don\'t Forget to Subscribe' ,  jpText:'Kodoku suru koto o wasurenaide kudasai', sound:'dont_forget_to_subscribe.wav'),
    ItemModel(enText: 'I love Programming' , jpText:'Watashi wa puroguramingu daisukidesu', sound:'i_love_programming.wav'),
    ItemModel(enText: 'Programming is Easy', jpText:'puroguramingu wa kantandesu', sound:'programming_is_easy.wav'),
    ItemModel(enText: 'Where are you going? ',  jpText: 'doko ni iku no ?', sound:'where_are_you_going.wav' ),
    ItemModel(enText: 'What is your Name?', jpText:'Namae wa nandesu ka ?', sound:'what_is_your_name.wav'),
    ItemModel(enText: 'I love Anime', jpText: 'Watashi wa anime ga daisukidesu', sound: 'i_love_anime.wav'),
    ItemModel(enText: "How are you feeling ?",  jpText: 'Go kibun wa ikagadesu ka ?', sound:'how_are_you_feeling.wav'),
    ItemModel(enText: 'Are you coming ?', jpText:'Kimasu ka ?', sound: 'are_you_coming.wav'),
    ItemModel(enText: 'Yes i\'m coming',  jpText:'Hai, ikimasu', sound: 'yes_im_coming.wav')

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme:const IconThemeData(color: Colors.white),
        title: CustomText(text: 'Phrases Screen',color: Colors.white,fontSize: 20),
        backgroundColor: const Color(0xff46322B)),
        body:ListView.builder(
          itemCount:phrases.length ,
          itemBuilder:(context,index){
            return CustomPhrasesContainer(
             index: index,
             phrasesModel: phrases[index]);}
     ));

    }
  }
