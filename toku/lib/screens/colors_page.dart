import 'package:flutter/material.dart';
import 'package:toku/classes/colors_class.dart';

class Colorss extends StatelessWidget {
  const Colorss({super.key});

  final List<Color> colors = const [
    Color(
      img: 'assets/images/colors/color_black.png',
      jap: 'Kuro',
      eng: 'Black',
      sound: 'black.wav',
    ),
    Color(
      img: 'assets/images/colors/color_brown.png',
      jap: 'Chairo',
      eng: 'Brown',
      sound: 'brown.wav',
    ),
    Color(
      img: 'assets/images/colors/color_dusty_yellow.png',
      jap: 'Hokori ppoi kiiro',
      eng: 'Dusty Yellow',
      sound: 'dusty yellow.wav',
    ),
    Color(
      img: 'assets/images/colors/color_gray.png',
      jap: 'Gurē',
      eng: 'Gray',
      sound: 'gray.wav',
    ),
    Color(
      img: 'assets/images/colors/color_green.png',
      jap: 'Midori',
      eng: 'Green',
      sound: 'green.wav',
    ),
    Color(
      img: 'assets/images/colors/color_red.png',
      jap: 'Aka',
      eng: 'Red',
      sound: 'red.wav',
    ),
    Color(
      img: 'assets/images/colors/color_white.png',
      jap: 'Shiroi',
      eng: 'White',
      sound: 'white.wav',
    ),
    Color(
      img: 'assets/images/colors/yellow.png',
      jap: 'Ki',
      eng: 'Yellow',
      sound: 'yellow.wav',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black87,
        title: const Text('Colors'),
      ),
      body: ListView.builder(
        itemCount: colors.length,
        itemBuilder: (context, index) {
          return CoLor(cr: colors[index]);
        },
      ),
    );
  }
}
