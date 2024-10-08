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
      'assets/img/tech/linkedin.png', Colors.blue),
  ContactItem('Github', 'https://github.com/ZheerBarzan',
      'assets/img/tech/github.png', Colors.black),
  ContactItem('Phone', 'tel:+964 770 035 5333', "assets/img/tech/whatsapp.png",
      Colors.green),
  ContactItem('Email', 'mailto:zheerbarzan85@outlook.com?subject=Hi%20Zheer!',
      'assets/img/tech/gmail.png', Colors.red),
];
