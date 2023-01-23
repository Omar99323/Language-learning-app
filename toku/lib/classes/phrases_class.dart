import 'package:flutter/material.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:audioplayers/audio_cache.dart';

// ignore: must_be_immutable
class PhraSe extends StatelessWidget {
  const PhraSe({super.key, required this.phr});
  final Phrase phr;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 90,
      color: Colors.cyan,
      child: ListTile(
        title: Text(
          phr.jap,
          style: const TextStyle(
            color: Colors.white,
          ),
        ),
        subtitle: Text(
          phr.eng,
          style: const TextStyle(
            color: Colors.white,
          ),
        ),
        trailing: IconButton(
          onPressed: () {
            AudioCache player = AudioCache(prefix: 'sounds/phrases/');
            player.play(phr.sound);
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

class Phrase {
  final String jap;
  final String eng;
  final String sound;
  const Phrase({required this.jap, required this.eng, required this.sound});
}
