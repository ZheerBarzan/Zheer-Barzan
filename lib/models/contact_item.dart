import 'package:flutter/material.dart';

class ContactItem {
  final String image;
  final String title;
  final String link;
  final Color borderColor;

  ContactItem(this.title, this.link, this.image, this.borderColor);
}

final kContactItems = [
  ContactItem('LinkedIn', 'https://www.linkedin.com/in/zheer-barzan/',
      'assets/linkedin.png', Colors.blue),
  ContactItem('Github', 'https://github.com/zheerbarzan', 'assets/github.png',
      Colors.black),
  ContactItem(
      'Phone', 'tel:+972-542-202-202', 'assets/phone.png', Colors.green),
  ContactItem(
      'Email', 'mailto:Y9JtH@example.com', 'assets/email.png', Colors.red),
];
