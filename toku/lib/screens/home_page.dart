import 'package:flutter/material.dart';
import 'package:toku/classes/block_class.dart';
import 'package:toku/screens/colors_page.dart';
import 'package:toku/screens/family_members_page.dart';
import 'package:toku/screens/numbers_page.dart';
import 'package:toku/screens/phrases_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Toku',
        ),
        backgroundColor: Colors.black87,
      ),
      body: Column(
        children: [
          Block(
            text: 'Numbers',
            color: Colors.orange,
            ontap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (BuildContext context) {
                    return const Numbers();
                  },
                ),
              );
            },
          ),
          Block(
            text: 'Family Members',
            color: Colors.green,
            ontap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (BuildContext context) {
                    return const Family();
                  },
                ),
              );
            },
          ),
          Block(
            text: 'Colors',
            color: Colors.purple,
            ontap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (BuildContext context) {
                    return const Colorss();
                  },
                ),
              );
            },
          ),
          Block(
            text: 'Phrases',
            color: Colors.cyan,
            ontap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (BuildContext context) {
                    return const Phrases();
                  },
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
