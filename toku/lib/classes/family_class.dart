import 'package:flutter/material.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:audioplayers/audio_cache.dart';

// ignore: must_be_immutable
class PerSon extends StatelessWidget {
  const PerSon({super.key, required this.per});
  final Person per;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 80,
      color: Colors.green,
      child: ListTile(
        leading: Image.asset(
          per.img,
        ),
        title: Text(
          per.jap,
          style: const TextStyle(
            color: Colors.white,
          ),
        ),
        subtitle: Text(
          per.eng,
          style: const TextStyle(
            color: Colors.white,
          ),
        ),
        trailing: IconButton(
          onPressed: () {
            AudioCache player = AudioCache(prefix: 'sounds/family_members/');
            player.play(per.sound);
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

class Person {
  final String img;
  final String jap;
  final String eng;
  final String sound;
  const Person(
      {required this.img,
      required this.jap,
      required this.eng,
      required this.sound});
}
