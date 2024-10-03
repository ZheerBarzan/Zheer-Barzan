import 'package:flutter/material.dart';

class NavigationItems {
  String text;
  IconData? icon;

  NavigationItems({required this.text, this.icon});
}

final kNavigationItems = [
  NavigationItems(text: 'Home', icon: Icons.home),
  NavigationItems(text: 'About', icon: Icons.account_box),
  NavigationItems(text: 'Projects', icon: Icons.work),
  NavigationItems(text: 'Contact', icon: Icons.contact_page),
];
