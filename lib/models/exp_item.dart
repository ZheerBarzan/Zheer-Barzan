import 'package:flutter/material.dart';

class ExpItem {
  final IconData icon;
  final String title;
  final String description;

  ExpItem({
    required this.icon,
    required this.title,
    required this.description,
  });
}

final kExpItems = [
  ExpItem(
    icon: Icons.book,
    title: 'Education',
    description:
        'I studied at National University of Sciences and Technology,\n Iran, with a degree in Computer Science and Engineering.',
  ),
  ExpItem(
    icon: Icons.work,
    title: 'Work Experience',
    description:
        'I worked as a Flutter Developer at National University of \nSciences and Technology, Iran. I also worked as a Web Developer in the same organization.',
  ),
  ExpItem(
    icon: Icons.school,
    title: 'School Experience',
    description:
        'I studied at National University of Sciences and Technology,\n Iran, with a degree in Computer Science and Engineering.',
  ),
  ExpItem(
    icon: Icons.book,
    title: 'Education',
    description:
        'I studied at National University of Sciences and Technology,\n Iran, with a degree in Computer Science and Engineering.',
  ),
];
