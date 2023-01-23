import 'package:flutter/material.dart';
import 'package:toku/classes/family_class.dart';

class Family extends StatelessWidget {
  const Family({super.key});
  final List<Person> family = const [
    Person(
      img: 'assets/images/family_members/family_grandfather.png',
      jap: 'Ojisan',
      eng: 'GrandFather',
      sound: 'grand father.wav',
    ),
    Person(
      img: 'assets/images/family_members/family_grandmother.png',
      jap: 'Sobo',
      eng: 'GrandMother',
      sound: 'grand mother.wav',
    ),
    Person(
      img: 'assets/images/family_members/family_father.png',
      jap: 'Chichioya',
      eng: 'Father',
      sound: 'father.wav',
    ),
    Person(
      img: 'assets/images/family_members/family_mother.png',
      jap: 'Hahaoya',
      eng: 'Mother',
      sound: 'mother.wav',
    ),
    Person(
      img: 'assets/images/family_members/family_older_brother.png',
      jap: 'Nisan',
      eng: 'Older Brother',
      sound: 'older bother.wav',
    ),
    Person(
      img: 'assets/images/family_members/family_older_sister.png',
      jap: 'Ane',
      eng: 'Older Sister',
      sound: 'older sister.wav',
    ),
    Person(
      img: 'assets/images/family_members/family_younger_brother.png',
      jap: 'Ototo',
      eng: 'Younger Brother',
      sound: 'younger brohter.wav',
    ),
    Person(
      img: 'assets/images/family_members/family_younger_sister.png',
      jap: 'Emoto',
      eng: 'Younger Sister',
      sound: 'younger sister.wav',
    ),
    Person(
      img: 'assets/images/family_members/family_son.png',
      jap: 'Musuko',
      eng: 'Son',
      sound: 'son.wav',
    ),
    Person(
      img: 'assets/images/family_members/family_daughter.png',
      jap: 'Musume',
      eng: 'Daughter',
      sound: 'daughter.wav',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      appBar: AppBar(
        title: const Text('Family Members'),
        backgroundColor: Colors.black87,
      ),
      body: ListView.builder(
        itemCount: family.length,
        itemBuilder: (context, index) {
          return PerSon(
            per: family[index],
          );
        },
      ),
    );
  }
}
