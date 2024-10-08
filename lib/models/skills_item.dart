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
    image: 'assets/img/tech/flutter.svg',
    borderColor: Colors.blue,
  ),
  SkillsItem(
    title: 'Dart',
    image: 'assets/img/tech/dart.svg',
    borderColor: Colors.blue,
  ),
  SkillsItem(
    title: 'Firebase',
    image: 'assets/img/tech/firebase.svg',
    borderColor: Colors.amber,
  ),
  SkillsItem(
    title: 'Swift',
    image: 'assets/img/tech/swift.svg',
    borderColor: Colors.orange.shade900,
  ),
  SkillsItem(
    title: 'Python',
    image: 'assets/img/tech/python.svg',
    borderColor: Colors.green,
  ),
  SkillsItem(
      title: "C++ ",
      image: "assets/img/tech/cpp3.svg",
      borderColor: Colors.red),
  SkillsItem(
    title: 'Blender',
    image: 'assets/img/tech/blender.svg',
    borderColor: Colors.green,
  ),
  SkillsItem(
      title: "Unreal Engine",
      image: "assets/img/tech/unrealengine.svg",
      borderColor: Colors.red),
  SkillsItem(
    title: 'Git',
    image: 'assets/img/tech/git.svg',
    borderColor: Colors.orange,
  ),
  SkillsItem(
    title: 'Github',
    image: 'assets/img/tech/github.svg',
    borderColor: Colors.black,
  ),
  SkillsItem(
    title: 'Docker',
    image: 'assets/img/tech/docker.svg',
    borderColor: Colors.green,
  ),
  SkillsItem(
      title: "Figma",
      image: "assets/img/tech/figma.svg",
      borderColor: Colors.blue),
  SkillsItem(
      title: "Adobe Photoshop",
      image: "assets/img/tech/photoshop.svg",
      borderColor: Colors.blue),
  SkillsItem(
      title: "Adobe After Effects",
      image: "assets/img/tech/AE.svg",
      borderColor: Colors.blue),
];
