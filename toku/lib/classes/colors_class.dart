import 'package:flutter/material.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:audioplayers/audio_cache.dart';

// ignore: must_be_immutable
class CoLor extends StatelessWidget {
  const CoLor({super.key, required this.cr});
  final Color cr;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 100,
      color: Colors.purple,
      child: ListTile(
        leading: Image.asset(
          cr.img,
        ),
        title: Text(
          cr.jap,
          style: const TextStyle(
            color: Colors.white,
          ),
        ),
        subtitle: Text(
          cr.eng,
          style: const TextStyle(
            color: Colors.white,
          ),
        ),
        trailing: IconButton(
          onPressed: () {
            AudioCache player = AudioCache(prefix: 'sounds/colors/');
            player.play(cr.sound);
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

class Color {
  final String img;
  final String jap;
  final String eng;
  final String sound;
  const Color(
      {required this.img,
      required this.jap,
      required this.eng,
      required this.sound});
}
