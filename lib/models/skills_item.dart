import 'dart:ui';

import 'package:flutter/material.dart';

class SkillsItem {
  final String title;
  final String image;
  final Color borderColor;

  SkillsItem(
      {required this.title, required this.image, required this.borderColor});
}

final kSkillsItems = [
  SkillsItem(
    title: 'Flutter',
    image: 'assets/img/flutter.svg',
    borderColor: Colors.blue,
  ),
  SkillsItem(
    title: 'Dart',
    image: 'assets/img/dart.svg',
    borderColor: Colors.blue,
  ),
  SkillsItem(
    title: 'Firebase',
    image: 'assets/img/firebase.svg',
    borderColor: Colors.amber,
  ),
  SkillsItem(
    title: 'Swift',
    image: 'assets/img/swift.svg',
    borderColor: Colors.orange.shade900,
  ),
  SkillsItem(
    title: 'Git',
    image: 'assets/img/git.svg',
    borderColor: Colors.orange,
  )
];
