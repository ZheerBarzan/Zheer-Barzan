import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NavigationBarItem extends StatelessWidget {
  final String text;
  final void Function() onPressed;
  const NavigationBarItem(
      {super.key, required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10),
      child: TextButton(
          onPressed: onPressed,
          child: Text(
            text,
            style: GoogleFonts.poppins(fontSize: 30),
          )),
    );
  }
}
