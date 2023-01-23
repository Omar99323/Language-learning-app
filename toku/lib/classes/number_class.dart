import 'package:flutter/material.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:audioplayers/audio_cache.dart';

// ignore: must_be_immutable
class NumBer extends StatelessWidget {
  const NumBer({super.key, required this.num});
  final Number num;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 80,
      color: Colors.orange,
      child: ListTile(
        leading: Image.asset(
          num.img,
        ),
        title: Text(
          num.jap,
          style: const TextStyle(
            color: Colors.white,
          ),
        ),
        subtitle: Text(
          num.eng,
          style: const TextStyle(
            color: Colors.white,
          ),
        ),
        trailing: IconButton(
          onPressed: () {
            AudioCache player = AudioCache(prefix: 'sounds/numbers/');
            player.play(num.sound);
          },
          icon: const Icon(
            Icons.play_arrow,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}

class Number {
  final String img;
  final String jap;
  final String eng;
  final String sound;
  const Number(
      {required this.img,
      required this.jap,
      required this.eng,
      required this.sound});
}
