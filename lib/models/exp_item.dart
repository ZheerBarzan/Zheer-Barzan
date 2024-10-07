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
    icon: Icons.school,
    title: 'Education',
    description: 'BSc. in Computer Engineering At Komar University (KUST).',
  ),
  ExpItem(
    icon: Icons.emoji_events,
    title: 'Achievment',
    description: 'Graduated Top 1st student in Komar University (KUST).',
  ),
  ExpItem(
    icon: Icons.school,
    title: 'Education',
    description:
        ' MSc. in Software Engineering At University of Kurdistan - Hawler (UKH).',
  ),
  ExpItem(
    icon: Icons.work,
    title: 'Experience',
    description: 'ICT Instructor at British International School (BIS)',
  ),
];
