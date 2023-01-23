import 'package:flutter/material.dart';
import 'package:toku/classes/phrases_class.dart';

class Phrases extends StatelessWidget {
  const Phrases({super.key});

  final List<Phrase> phrases = const [
    Phrase(
      jap: 'Kōdoku suru koto o wasurenaide kudasai.',
      eng: 'Dont Forget To Subscribe.',
      sound: 'dont_forget_to_subscribe.wav',
    ),
    Phrase(
      jap: 'ki masu ka?',
      eng: 'Are You Coming?',
      sound: 'are_you_coming.wav',
    ),
    Phrase(
      jap: 'Go kibun wa ikagadesu ka?',
      eng: 'How Are You Feeling?',
      sound: 'how_are_you_feeling.wav',
    ),
    Phrase(
      jap: 'Watashi wa anime ga daisukidesu.',
      eng: 'I Love Anime.',
      sound: 'i_love_anime.wav',
    ),
    Phrase(
      jap: 'Watashi wa puroguramingu ga daisukidesu.',
      eng: 'I Love Programming.',
      sound: 'i_love_programming.wav',
    ),
    Phrase(
      jap: 'Puroguramingu wa kantandesu.',
      eng: 'Programming Is Easy.',
      sound: 'programming_is_easy.wav',
    ),
    Phrase(
      jap: 'Namae wa nandesu ka?',
      eng: 'What Is Your Name?',
      sound: 'what_is_your_name.wav',
    ),
    Phrase(
      jap: 'Doko ni iku no?',
      eng: 'Where Are You Going?',
      sound: 'where_are_you_going.wav',
    ),
    Phrase(
      jap: 'Hai, watashi wa kite imasu.',
      eng: 'Yes Im Coming.',
      sound: 'yes_im_coming.wav',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black87,
        title: const Text('Phrases'),
      ),
      body: ListView.builder(
        itemCount: phrases.length,
        itemBuilder: (context, index) {
          return PhraSe(phr: phrases[index]);
        },
      ),
    );
  }
}
