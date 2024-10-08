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
    title: 'Python',
    image: 'assets/img/python.svg',
    borderColor: Colors.green,
  ),
  SkillsItem(
      title: "C++ ", image: "assets/img/cpp3.svg", borderColor: Colors.red),
  SkillsItem(
    title: 'Blender',
    image: 'assets/img/blender.svg',
    borderColor: Colors.green,
  ),
  SkillsItem(
      title: "Unreal Engine",
      image: "assets/img/unrealengine.svg",
      borderColor: Colors.red),
  SkillsItem(
    title: 'Git',
    image: 'assets/img/git.svg',
    borderColor: Colors.orange,
  ),
  SkillsItem(
    title: 'Github',
    image: 'assets/img/github.svg',
    borderColor: Colors.black,
  ),
  SkillsItem(
    title: 'Docker',
    image: 'assets/img/docker.svg',
    borderColor: Colors.green,
  ),
  SkillsItem(
      title: "Figma", image: "assets/img/figma.svg", borderColor: Colors.blue),
  SkillsItem(
      title: "Adobe Photoshop",
      image: "assets/img/photoshop.svg",
      borderColor: Colors.blue),
  SkillsItem(
      title: "Adobe After Effects",
      image: "assets/img/AE.svg",
      borderColor: Colors.blue),
];
