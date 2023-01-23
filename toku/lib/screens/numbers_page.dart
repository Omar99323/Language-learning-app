import 'package:flutter/material.dart';
import 'package:toku/classes/number_class.dart';

class Numbers extends StatelessWidget {
  const Numbers({super.key});

  final List<Number> numbers = const [
    Number(
      img: 'assets/images/numbers/number_one.png',
      jap: 'Ichi',
      eng: 'one',
      sound: 'number_one_sound.mp3',
    ),
    Number(
      img: 'assets/images/numbers/number_two.png',
      jap: 'Ni',
      eng: 'Two',
      sound: 'number_two_sound.mp3',
    ),
    Number(
      img: 'assets/images/numbers/number_three.png',
      jap: 'San',
      eng: 'Three',
      sound: 'number_three_sound.mp3',
    ),
    Number(
      img: 'assets/images/numbers/number_four.png',
      jap: 'Shi',
      eng: 'Four',
      sound: 'number_four_sound.mp3',
    ),
    Number(
      img: 'assets/images/numbers/number_five.png',
      jap: 'Go',
      eng: 'Five',
      sound: 'number_five_sound.mp3',
    ),
    Number(
      img: 'assets/images/numbers/number_six.png',
      jap: 'Roku',
      eng: 'Six',
      sound: 'number_six_sound.mp3',
    ),
    Number(
      img: 'assets/images/numbers/number_seven.png',
      jap: 'Seban',
      eng: 'Seven',
      sound: 'number_seven_sound.mp3',
    ),
    Number(
      img: 'assets/images/numbers/number_eight.png',
      jap: 'Hachi',
      eng: 'Eight',
      sound: 'number_eight_sound.mp3',
    ),
    Number(
      img: 'assets/images/numbers/number_nine.png',
      jap: 'Kyuu',
      eng: 'Nine',
      sound: 'number_nine_sound.mp3',
    ),
    Number(
      img: 'assets/images/numbers/number_ten.png',
      jap: 'Juu',
      eng: 'Ten',
      sound: 'number_ten_sound.mp3',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black87,
        title: const Text('Numbers'),
      ),
      body: ListView.builder(
        itemCount: numbers.length,
        itemBuilder: (context, index) {
          return NumBer(num: numbers[index]);
        },
      ),
    );
  }
}
