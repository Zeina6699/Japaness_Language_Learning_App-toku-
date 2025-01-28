import 'package:flutter/material.dart';
import 'package:toku/Models/Phrases_Model.dart';
import 'package:toku/Widgets/Custom_Phrases_Container.dart';
import 'package:toku/Widgets/Custom_Text.dart';

class PhreasesScreen extends StatelessWidget {
   PhreasesScreen({super.key});
  List<PhrasesModel>phrases=[
    PhrasesModel(text1: 'Don\'t Forget to Subscribe' , text2:'Kodoku suru koto o wasurenaide kudasai', sound:'dont_forget_to_subscribe.wav'),
    PhrasesModel(text1: 'I love Programming' , text2:'Watashi wa puroguramingu daisukidesu', sound:'i_love_programming.wav'),
    PhrasesModel(text1: 'Programming is Easy', text2:'puroguramingu wa kantandesu', sound:'programming_is_easy.wav'),
    PhrasesModel(text1: 'Where are you going? ', text2: 'doko ni iku no ?', sound:'where_are_you_going.wav' ),
    PhrasesModel(text1: 'What is your Name?', text2:'Namae wa nandesu ka ?', sound:'what_is_your_name.wav'),
    PhrasesModel(text1: 'I love Anime', text2: 'Watashi wa anime ga daisukidesu', sound: 'i_love_anime.wav'),
    PhrasesModel(text1: "How are you feeling ?", text2: 'Go kibun wa ikagadesu ka ?', sound:'how_are_you_feeling.wav'),
    PhrasesModel(text1: 'Are you coming ?', text2:'Kimasu ka ?', sound: 'are_you_coming.wav'),
    PhrasesModel(text1: 'Yes i\'m coming', text2:'Hai, ikimasu', sound: 'yes_im_coming.wav')

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
