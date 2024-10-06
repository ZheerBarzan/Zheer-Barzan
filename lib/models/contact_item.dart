import 'package:flutter/material.dart';

class ContactItem {
  final String image;
  final String title;
  final String link;
  final Color borderColor;

  ContactItem(this.title, this.link, this.image, this.borderColor);
}

final kContactItems = [
  ContactItem('LinkedIn', 'https://www.linkedin.com/in/zheer-barzan-80aba5207/',
      'assets/img/linkedin.svg', Colors.blue),
  ContactItem('Github', 'https://github.com/ZheerBarzan',
      'assets/img/github.svg', Colors.black),
  ContactItem(
      'Phone', 'tel:+964770055333', "assets/img/whatsapp.svg", Colors.green),
  ContactItem(
      'Email', 'mailto:Y9JtH@example.com', 'assets/img/gmail.svg', Colors.red),
];
